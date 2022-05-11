class LessonsDetailsModel {
  String? chapterName;
  String? chapterDetails;
  String? score;

  LessonsDetailsModel({
    this.chapterName,
    this.chapterDetails,
    this.score,
  });
}

List<LessonsDetailsModel> chapters = [
  LessonsDetailsModel(chapterName: 'Introduction', chapterDetails: 'Introduction to geography', score: '81'),
  LessonsDetailsModel(chapterName: 'Maps type & Usages', chapterDetails: 'Learn about maps type & how to use each...', score: '79'),
  LessonsDetailsModel(chapterName: 'Population & Country', chapterDetails: 'Learn the worldwide population & country...', score: '80'),
  LessonsDetailsModel(chapterName: 'Climate ', chapterDetails: 'Learn about climate...', score: '60'),
  LessonsDetailsModel(chapterName: 'Earth-forming Process ', chapterDetails: 'Learn how the earth-forming process be...', score: '56'),
  LessonsDetailsModel(chapterName: 'Rocks', chapterDetails: 'Learn the type of the rocks,and their spec...', score: '90'),
  LessonsDetailsModel(chapterName: 'Earthquake', chapterDetails: 'Learn about seismology...', score: '90'),
];
