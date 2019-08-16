enum Page { EDUCATION, WORK, CONTACT, PROJECTS }

class AppState {
  Page pageState;

  String get pageTitle {
    switch (pageState) {
      case Page.CONTACT:
        return "Contact";
        break;
      case Page.WORK:
        return "Work";
        break;
      case Page.PROJECTS:
        return "Projects";
        break;
      default:
        return "Education";
    }
  }

  AppState({this.pageState = Page.EDUCATION});
}
