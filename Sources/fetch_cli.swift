// The Swift Programming Language
// https://docs.swift.org/swift-book

import ArgumentParser
import Foundation

@main
struct fetch_cli: AsyncParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Fetch string from a file and copy to clipboard!"
    )
    
    @Option(name: .shortAndLong, help: "Specify url to fetch from")
    public var urlString: String
    
    @Flag(name: .long, help: "Show response from url")
    public var showResponse = false
    
    public func run() async throws {
        print(urlString, showResponse)
    }
}
