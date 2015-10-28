
@interface SPUISearchViewController : NSObject

// called when view is showing
- (void)_didFinishPresenting;

// clear stuff
- (void)_clearSearchResults;
- (void)_searchFieldEditingChanged;

@end



%hook SPUISearchViewController

- (void)_didFinishPresenting 
{
    [self _clearSearchResults];
    [self _searchFieldEditingChanged];
    %orig;
}

%end
