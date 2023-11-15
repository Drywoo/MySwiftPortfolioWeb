import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct MySwiftPortfolioWeb: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "MySwiftPortfolioWeb"
    var description = "안넝하세요 내일을 그리는 개발자 김건우입니다. 프로젝트를 보시려면 제목을 클릭해주세요😆"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try MySwiftPortfolioWeb().publish(withTheme: .foundation)
