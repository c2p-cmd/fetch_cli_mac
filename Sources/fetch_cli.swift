// The Swift Programming Language
// https://docs.swift.org/swift-book

import ArgumentParser
import AppKit
import Foundation
import Figlet

@main
struct fetch_cli: AsyncParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Fetch string from a file and copy to clipboard!"
    )
    
    /// Option for specifying url to fetch from
    @Option(name: .shortAndLong, help: "Specify url to fetch from")
    public var urlString: String
    
    /// Flag to print the data content from `urlString`
    @Flag(name: .long, help: "Show data from URL")
    public var showData: Bool = false
    
    /// Flag to enable if content was copied to clipboard or not
    @Flag(name: .long, help: "Show response from ``NSPasteboard``")
    public var debugPasteboard: Bool = false

    /// Flag indicating to print HTTP Response from `urlString` or not
    @Flag(name: .long, help: "Show HTTP Response from URL")
    public var showResponse = false
    
    public func run() async throws {
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        let request = URLRequest(url: url, cachePolicy: .reloadRevalidatingCacheData, timeoutInterval: 30)
        let session: URLSession = .shared
        
        let (data, response) = try await session.data(for: request)
        
        let fileContents = String(decoding: data, as: UTF8.self)
        
        if showData {
            print(fileContents)
        }
        print("\n")
        
        let changeCount = NSPasteboard.general.declareTypes([.string], owner: nil)
        let didCopy = NSPasteboard.general.setString(fileContents, forType: .string)
        if debugPasteboard {
            print(
    """
    {
    "did_copy": \(didCopy),
    "change_count": \(changeCount)
    }
    """
            )
        }
      
        if didCopy {
            Figlet.say("Copied!")
        } else {
            Figlet.say("NO COPY")
        }
        
        if showResponse, let httpResponse = response as? HTTPURLResponse {
            print(httpResponse.statusCode)
            print(httpResponse.description)
        }
    }
}
