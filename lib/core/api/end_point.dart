class EndPoint {
  static const String baseUrl = 'https://seesooq.com/api/';
  static const String googleMapPlace = 'https://maps.googleapis.com/maps/api';
  static const String userNotifications = 'notifications';
  static const String signUpUser = 'register';
  static const String getPackagesM = 'getPackages';
  static const String getWallet = 'users/{userId}/wallet/balance';
  static const String loginUser = 'login';
  static const String forgetPassword = 'restore-password';
  static const String verifyOtpRestorePassword = 'validate-otp-password';
  static const String changePassword = 'change-password';
  static const String verifyOtp = 'validate-otp';
  static const String loginWithSocial = 'login-with-social';
  static const String registerWithSocial = 'register-with-social';
  static const String category = 'categories';
  static const String getAttributesForAds = 'attributes';
  static const String getAttributesByFilter = 'attributes';
  static const String sendFilter = 'filter/';
  static const String getMyStories = 'MyStory';
  static const String filterUser = 'filter/';
  static const String deleteMyStory = 'delete/story/{storyId}';
  static const String getUsersStory = 'user/stories';
  static const String getOfferAds = 'advertisement/offers/{categoryId}';
  static const String createMyStory = 'create/story';
  static const String getBanners = 'banners';
  static const String createAdd = 'advertisement/store';
  static const String viewStory = 'view/story/{storyId}';
  static const String showAdvertisment = 'advertisement/show/{id}';
  static const String detailsCategory = 'sub_categories/{categoryId}';
  static const String getAdvertisement = 'advertisement/{subCategoryId}/';
  static const String getCities = 'cities/{id}';
  static const String getGovernorate = 'governorate';
  static const String searchPlaces = '/place/textsearch/json';
  static const String editProfile = 'update_profile';
  static const String privacyPolicy = 'pages/privacy-policy';
  static const String termsOfUse = 'pages/terms-of-use';
  static const String reasonsForDeletion = 'pages/reasons-for-deletion';
  static const String frequentlyAskQuestion = 'pages/frequently-asked-questions';
  static const String contactUs = 'contact-us';
  static const String aboutUs = 'pages/about-us';
  static const String getStatistic = 'user/statistic';
  static const String deleteAccount = 'delete_profile';

  static const String getFav = 'my-favourite';
  static const String getReelsFav = 'my-favourite-reel';
  static const String storePayment = 'payment/store';
  static const String transactionsPayment = 'transactions';
  // subscription
  static const String addFav = 'add-to-favourites/{id}';
  static const String getBrands = 'brands';
  static const String removeFav = 'remove-from-favourites/{id}';
  static const String removeFavReel = 'remove-reel-from-favourites/{id}';
  static const String getFollowers = 'followers';
  static const String getFollowings = 'followings';
  static const String makeFollow = 'follow/{idMF}';
  static const String removeFollower = 'unfollow/{idRFR}';
  static const String removeFollowing = 'followings/remove/{idRFG}';
  static const String getMyAds = 'my_advertisement';
  static const String deleteMyAds = 'advertisement/delete/{id}';
  static const String getAllBlogs = 'blogs';
  static const String getDetailsBlog = 'blog/show/{id}';
  static const String getReels = 'user/reels';
  static const String viewReel = 'view/reel/{id}';
  static const String getMyReels = 'my-reels';
  static const String createReel = 'create/reel';
  static const String deleteReel = 'delete/reel/{id}';
  static const String likeReel = 'add-reel-to-favourites/{id}';
}
