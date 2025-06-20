class AppTexts {
  //tagline
  static const String appTagline = "Your Smart Personal Finance\nAI Companion";

  static List<String> landingPageTexts = [
    "Smart Goal Tracking",
    "Subscription Management",
    "Finance Companion",
    "Cloud backup & sync",
    "Achievements & More!"
  ];

  static List<String> landingPageTextsSecondPage = [
    "Control your Finances with Personal Budgets",
    "AI Finance Assistant, Everywhere, Anywhere",
    "Set Your Own Financial Goals Easily",
    "Manage Your Money In One Single Place",
  ];

  static List<String> landingPageTextsDetail = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  ];

  //sign in text
  static const String loginAccount = "Login Account";
  static const String pleaseLoginToContinue = "Please login into your account";
  static const String orLoginWith = "or login with";
  static const String doNotHaveAccount = "Don't have an account? ";
  static const String createAccount = "Create Account";
  static const String needHelp = "Need Help?";
  static const String forgotPassword = "Forgot Password?";
  static const String forgotYourPassword = "Forgot Your Password?";
  static const String pleaseEnterMobileNumber =
      "Please enter your mobile number for OTP verification to reset your password";
  static const String enterPhone = "Enter Mobile Number";
  static const String enterPassword = "Enter Password";
  static const String verifyOTP = "Verify Your Phone number";
  static const String timer = "00:59";
  static const String didNotGetCode = "Didn't get the OTP?";
  static const String resendCode = "Resend Code";
  static const String toVerify =
      "To verify your account, enter the 6 digit OTP that we sent to your mobile number.";
  static const String termsAndServices =
      "By 'Logging In', you agree to the Terms of Use\nand Privacy Policy.";

  //create new password
  static const String createNewPassword = "Create New Password";
  static const String createNewPasswordDetail =
      "Please make sure the password is not the same as the previous password.";
  static const String newPassword = "New Password";
  static const String confirmPassword = "Confirm new password";

//reset password
  static const String resetPassword = "Reset Password Success";
  static const String resetPasswordDetail =
      "Please re-login with your new password.";

  //registration page

  static const String registerAccount = "Registration Account";
  static const String registerAccountDetail = "Please create your account!";
  static const String orRegisterWith = "or register with";
  static const String alreadyHaveAccount = "Already have an account? ";

  //financial assessment
  static const String whatsYourName = "What's your full name?";
  static const String enterYourName = "Enter Name";
  static const String of15 = " of 12";
  static const String skip = "Skip";
  static const String whatsYourPurpose = "What's your app purpose?";
  static const String whatYouDoForLiving = "What do you do for living?";
  static const String howMuchMaking = "How much money are you\nmaking monthly?";
  static const String howMuchSaving =
      "How much income do you save\neach month?";
  static const String mostSpendCategories =
      "What categories do you spend \nthe most on?";
  static const String haveDebt = "Do you have any outstanding\ndebt?";
  static const String haveFinancialGoal =
      "Do you have a specific\nfinancial goal in mind?";
  static const String howTrackingExpenses =
      "How do you currently track\nyour expenses?";
  static const String retireAge = "At what age would you like to\nretire?";
  static const String howYouFeel =
      "How do you feel about your\ncurrent finance situation?";
  static const String haveEmergencyFund = "Do you have emergency\nfund?";
  static const String emergencyFundCoverMonths =
      "How many month of expenses\ncan your emergency fund cover?"; //will add \n
  static const String spendingBehaviour =
      "What's your typical spending\nbehaviour?";

  static const List<String> assessmentTitleTexts = [
    whatsYourName,
    whatsYourPurpose,
    whatYouDoForLiving,
    howMuchMaking,
    howMuchSaving,
    mostSpendCategories,
    haveDebt,
    haveFinancialGoal,
    howTrackingExpenses,
    retireAge,
    howYouFeel,
    haveEmergencyFund,
    emergencyFundCoverMonths,
    spendingBehaviour
  ];

  //assessment purpose

  static const String wantToControl = "I want to control my budget";
  static const String wantToSave = "I want to save more money";
  static const String wantToFinanceAi = "I want finance AI companion";
  static const String wantToTrack = "I want to track my expenses";
  static const String wantToManageSubs = "I want to manage subscription";
  static const String wantToBuildEmergencyFund = "I want to build emergency fund";
  static const String wantToTryApp = "I just want to try the app";
  static const String monthlyAmount = "Monthly Amount";
  static const String enterYouNetIncome = "Please enter your net income amount";
  static const String rupee = "₹";
  static const String dragToAdjust = "** Drag the chart to adjust";
  static const String iSave = "I Save ${rupee}5000 from my income (${rupee}10000)";

  static const List<String> assessmentPurposes = [wantToControl,wantToSave,wantToFinanceAi,wantToTrack,wantToManageSubs,wantToBuildEmergencyFund,wantToTryApp];

  //categories spend on -
  static const String grocery = "Grocery";
  static const String entertainment = "Entertainment";
  static const String utility = "Utility";
  static const String bill = "Bill";
  static const String rent = "Rent";
  static const String subscription = "Subscription";
  static const String others = "Others";
  static const List<String> categoryTextList = [grocery,entertainment,utility,bill,rent,subscription,others];

  // outstanding amount
  static const String howMuchDebt = "I have an outstanding debt of $rupee 1,000";

  //goal in mind
  static const String payOffDebt = "Pay off debt";
  static const String growMyMoney = "Grow my money";
  static const String buildOrGrowSavings = "Build or Grow Savings";
  static const String homeOwnership = "Home Ownership";
  static const String reduceSpending = "Reduce Spending";
  static const String haveOtherGoals = "I have other goals";
  static const List<String> goalInMindList = [payOffDebt,growMyMoney,buildOrGrowSavings,homeOwnership,reduceSpending,haveOtherGoals];

  //currently track how

  static const String doNotTrack = "I don't track them\nat all";
  static const String manuallyTrack = "Manually (e.g, spreadsheets)";
  static const String automaticallyTrack = "Automatically (other app/banks)";
  static const String preferNotToTrack = "I prefer not to\ntrack them";
  static const List<String> currentTrackList = [doNotTrack,manuallyTrack,automaticallyTrack,preferNotToTrack];

  //age retirement

  static const String selectedAge = "I want to retire at the age of";

  //current situation feeling

  static const String veryHappy = "I feel very happy";
  static const String somewhatHappy= "I feel somewhat happy";
  static const String neutral = "I feel neutral";
  static const String lessHappy = "I feel less happy";
  static const String unHappy = "I feel unhappy";
  static const List<String> situationFeelingList = [veryHappy,somewhatHappy,neutral,lessHappy,unHappy ];

  //have funds
  static const String whatIsEmergencyFund = "An emergency  fund is a cash reserve that's\nspecially set aside for unplanned expenses or financial emergencies.";
  static const String giveAnswers = "Please give some true answers for\nfollowing questions.";

  static const List<String> showStaticOrDynamic = [whatIsEmergencyFund,giveAnswers];

}
