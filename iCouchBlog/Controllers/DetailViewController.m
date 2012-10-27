//
//  DetailViewController.m
//  iCouchBlog
//
//  Created by Anna Lesniak on 8/26/12.
//  Copyright (c) 2012 Anna Lesniak. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void) configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item


- (void) configureView {
  if (self.post) {
    self.titleView.text = [self.post getValueOfProperty: @"title"];
    self.bodyView.text = [self.post getValueOfProperty: @"body"];
  }
  self.view.backgroundColor = [UIColor backgroundColor];
  self.titleView.backgroundColor = [UIColor lightBackgroundColor];
  self.bodyView.backgroundColor = [UIColor lightBackgroundColor];
  self.titleLabel.textColor = [UIColor darkTextColor];
  self.bodyLabel.textColor = [UIColor lightTextColor];
  self.titleView.textColor = [UIColor darkTextColor];
  self.bodyView.textColor = [UIColor darkTextColor];
}

- (void) viewDidLoad {
  [super viewDidLoad];
  [self configureView];
}

- (IBAction) deletePressed {
  RESTOperation *deleteOp = [self.post deleteDocument];
  [deleteOp onCompletion: ^{
    [self.navigationController popViewControllerAnimated: YES];
  }];
  [deleteOp start];
}

- (void) prepareForSegue: (UIStoryboardSegue *) segue sender: (id)sender {
  if ([[segue identifier] isEqualToString: @"editPost"]) {
    [[segue destinationViewController] setPost: self.post];
  }
}

@end
