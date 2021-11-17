
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations returned
/// by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @helloWorld.
  ///
  /// In en, this message translates to:
  /// **'Hello World!'**
  String get helloWorld;

  /// No description provided for @minLenght.
  ///
  /// In en, this message translates to:
  /// **'does not meet the minimum lenght'**
  String get minLenght;

  /// No description provided for @maxLenght.
  ///
  /// In en, this message translates to:
  /// **'does not meet the maximum lenght'**
  String get maxLenght;

  /// No description provided for @acceptEmpty.
  ///
  /// In en, this message translates to:
  /// **'can not be empty'**
  String get acceptEmpty;

  /// No description provided for @doctorProfile.
  ///
  /// In en, this message translates to:
  /// **'Doctor profile'**
  String get doctorProfile;

  /// No description provided for @patients.
  ///
  /// In en, this message translates to:
  /// **'Patients'**
  String get patients;

  /// No description provided for @yearsOfExp.
  ///
  /// In en, this message translates to:
  /// **'Years of exp.'**
  String get yearsOfExp;

  /// No description provided for @aboutMe.
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get aboutMe;

  /// No description provided for @neurologist.
  ///
  /// In en, this message translates to:
  /// **'Neurologist'**
  String get neurologist;

  /// No description provided for @doctor.
  ///
  /// In en, this message translates to:
  /// **'doctor'**
  String get doctor;

  /// No description provided for @consultation.
  ///
  /// In en, this message translates to:
  /// **'Consultation'**
  String get consultation;

  /// No description provided for @consultationLong.
  ///
  /// In en, this message translates to:
  /// **'Consultation'**
  String get consultationLong;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'AddToCart'**
  String get addToCart;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @seeMore.
  ///
  /// In en, this message translates to:
  /// **'See more'**
  String get seeMore;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @schedules.
  ///
  /// In en, this message translates to:
  /// **'Schedules'**
  String get schedules;

  /// No description provided for @reviewAndRatings.
  ///
  /// In en, this message translates to:
  /// **'Review and Ratings'**
  String get reviewAndRatings;

  /// No description provided for @reviewsNotFound.
  ///
  /// In en, this message translates to:
  /// **'Reviews not found'**
  String get reviewsNotFound;

  /// No description provided for @veryGoodDoctor.
  ///
  /// In en, this message translates to:
  /// **'Very Good doctor'**
  String get veryGoodDoctor;

  /// No description provided for @addedToCart.
  ///
  /// In en, this message translates to:
  /// **'Added to cart'**
  String get addedToCart;

  /// No description provided for @serviceDetails.
  ///
  /// In en, this message translates to:
  /// **'Service details'**
  String get serviceDetails;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @revision.
  ///
  /// In en, this message translates to:
  /// **'Revision'**
  String get revision;

  /// No description provided for @additionalInformation.
  ///
  /// In en, this message translates to:
  /// **'Additional Information'**
  String get additionalInformation;

  /// No description provided for @reserveWarning.
  ///
  /// In en, this message translates to:
  /// **'Prices and specifications are subject to change without notice after a specialized evaluation.'**
  String get reserveWarning;

  /// No description provided for @reserve.
  ///
  /// In en, this message translates to:
  /// **'Reserve'**
  String get reserve;

  /// No description provided for @favourites.
  ///
  /// In en, this message translates to:
  /// **'Favourites'**
  String get favourites;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get search;

  /// No description provided for @configuration.
  ///
  /// In en, this message translates to:
  /// **'Configuration'**
  String get configuration;

  /// No description provided for @viewProfile.
  ///
  /// In en, this message translates to:
  /// **'View profile'**
  String get viewProfile;

  /// No description provided for @profileComplete.
  ///
  /// In en, this message translates to:
  /// **'Profile complete'**
  String get profileComplete;

  /// No description provided for @accountSettings.
  ///
  /// In en, this message translates to:
  /// **'Account Settings'**
  String get accountSettings;

  /// No description provided for @personalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personalInformation;

  /// No description provided for @paymentAndFees.
  ///
  /// In en, this message translates to:
  /// **'Payment and Fees'**
  String get paymentAndFees;

  /// No description provided for @appointmentHistory.
  ///
  /// In en, this message translates to:
  /// **'Appointment History'**
  String get appointmentHistory;

  /// No description provided for @inviteFriend.
  ///
  /// In en, this message translates to:
  /// **'Invite a friend'**
  String get inviteFriend;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullName;

  /// No description provided for @pendingPayments.
  ///
  /// In en, this message translates to:
  /// **'Pending payments'**
  String get pendingPayments;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @attendance.
  ///
  /// In en, this message translates to:
  /// **'Attendance'**
  String get attendance;

  /// No description provided for @securityCenter.
  ///
  /// In en, this message translates to:
  /// **'Security Center'**
  String get securityCenter;

  /// No description provided for @supportMessage.
  ///
  /// In en, this message translates to:
  /// **'I receive the support, tools and information you need to be sure'**
  String get supportMessage;

  /// No description provided for @getInTouchTeam.
  ///
  /// In en, this message translates to:
  /// **'Get in touch with our team'**
  String get getInTouchTeam;

  /// No description provided for @talkToTeam.
  ///
  /// In en, this message translates to:
  /// **'Talk to our team about your concerns about services'**
  String get talkToTeam;

  /// No description provided for @getHelp.
  ///
  /// In en, this message translates to:
  /// **'Get help'**
  String get getHelp;

  /// No description provided for @sendCommentaries.
  ///
  /// In en, this message translates to:
  /// **'Send commentaries'**
  String get sendCommentaries;

  /// No description provided for @legalInformation.
  ///
  /// In en, this message translates to:
  /// **'Legal Information'**
  String get legalInformation;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// No description provided for @closeSession.
  ///
  /// In en, this message translates to:
  /// **'Close session'**
  String get closeSession;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @myDoctor.
  ///
  /// In en, this message translates to:
  /// **'My doctor'**
  String get myDoctor;

  /// No description provided for @myDates.
  ///
  /// In en, this message translates to:
  /// **'My appointments'**
  String get myDates;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dateOfBirth;

  /// No description provided for @occupation.
  ///
  /// In en, this message translates to:
  /// **'Occupation'**
  String get occupation;

  /// No description provided for @patient.
  ///
  /// In en, this message translates to:
  /// **'Patient'**
  String get patient;

  /// No description provided for @bloodType.
  ///
  /// In en, this message translates to:
  /// **'BloodType'**
  String get bloodType;

  /// No description provided for @nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationality;

  /// No description provided for @idiom.
  ///
  /// In en, this message translates to:
  /// **'Idiom'**
  String get idiom;

  /// No description provided for @sex.
  ///
  /// In en, this message translates to:
  /// **'Sex'**
  String get sex;

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// No description provided for @allergies.
  ///
  /// In en, this message translates to:
  /// **'Allergies'**
  String get allergies;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @previous.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get canceled;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancelar'**
  String get cancel;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @man.
  ///
  /// In en, this message translates to:
  /// **'Man'**
  String get man;

  /// No description provided for @woman.
  ///
  /// In en, this message translates to:
  /// **'Woman'**
  String get woman;

  /// No description provided for @haveYouBeenHospitalized.
  ///
  /// In en, this message translates to:
  /// **'Have you been hospitalized in the last two years?'**
  String get haveYouBeenHospitalized;

  /// No description provided for @haveYouBeenUnderMedicalCare.
  ///
  /// In en, this message translates to:
  /// **'Have you been under medical care in the last two years?'**
  String get haveYouBeenUnderMedicalCare;

  /// No description provided for @areYouAllergic.
  ///
  /// In en, this message translates to:
  /// **'Are you allergic to any medications, anesthesia and / or antibiotics?'**
  String get areYouAllergic;

  /// No description provided for @haveYouHadBleeding.
  ///
  /// In en, this message translates to:
  /// **'Have you had bleeding that has been treated?'**
  String get haveYouHadBleeding;

  /// No description provided for @haveYouHadDiseases.
  ///
  /// In en, this message translates to:
  /// **'If you have had any of the following diseases, mark it'**
  String get haveYouHadDiseases;

  /// No description provided for @tuberculosis.
  ///
  /// In en, this message translates to:
  /// **'Tuberculosis'**
  String get tuberculosis;

  /// No description provided for @pacemaker.
  ///
  /// In en, this message translates to:
  /// **'Pacemaker'**
  String get pacemaker;

  /// No description provided for @diabetes.
  ///
  /// In en, this message translates to:
  /// **'Diabetes'**
  String get diabetes;

  /// No description provided for @fever.
  ///
  /// In en, this message translates to:
  /// **'Fever'**
  String get fever;

  /// No description provided for @anemia.
  ///
  /// In en, this message translates to:
  /// **'Anemia'**
  String get anemia;

  /// No description provided for @arthritis.
  ///
  /// In en, this message translates to:
  /// **'Arthritis'**
  String get arthritis;

  /// No description provided for @rheumatic.
  ///
  /// In en, this message translates to:
  /// **'Rheumatic'**
  String get rheumatic;

  /// No description provided for @cardiac.
  ///
  /// In en, this message translates to:
  /// **'Cardiac'**
  String get cardiac;

  /// No description provided for @psychic.
  ///
  /// In en, this message translates to:
  /// **'Psychic'**
  String get psychic;

  /// No description provided for @treatment.
  ///
  /// In en, this message translates to:
  /// **'Treatment'**
  String get treatment;

  /// No description provided for @hepatitis.
  ///
  /// In en, this message translates to:
  /// **'Hepatitis'**
  String get hepatitis;

  /// No description provided for @hypertension.
  ///
  /// In en, this message translates to:
  /// **'Hypertension'**
  String get hypertension;

  /// No description provided for @stroke.
  ///
  /// In en, this message translates to:
  /// **'Stroke'**
  String get stroke;

  /// No description provided for @weightLoss.
  ///
  /// In en, this message translates to:
  /// **'WeightLoss'**
  String get weightLoss;

  /// No description provided for @vascularAccident.
  ///
  /// In en, this message translates to:
  /// **'Vascular Accident'**
  String get vascularAccident;

  /// No description provided for @epilepsy.
  ///
  /// In en, this message translates to:
  /// **'Epilepsy'**
  String get epilepsy;

  /// No description provided for @injury.
  ///
  /// In en, this message translates to:
  /// **'Injury'**
  String get injury;

  /// No description provided for @cancer.
  ///
  /// In en, this message translates to:
  /// **'Cancer'**
  String get cancer;

  /// No description provided for @others.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

  /// No description provided for @areYouTakingMedicine.
  ///
  /// In en, this message translates to:
  /// **'Are you currently taking any medications?'**
  String get areYouTakingMedicine;

  /// No description provided for @areYouPregnant.
  ///
  /// In en, this message translates to:
  /// **'Are you pregnant?'**
  String get areYouPregnant;

  /// No description provided for @lastVisitDentist.
  ///
  /// In en, this message translates to:
  /// **'Last visit to the dentist?'**
  String get lastVisitDentist;

  /// No description provided for @emergencyNumber.
  ///
  /// In en, this message translates to:
  /// **'Emergency number'**
  String get emergencyNumber;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @relationShip.
  ///
  /// In en, this message translates to:
  /// **'Relationship'**
  String get relationShip;

  /// No description provided for @keep.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get keep;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfile;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @payments.
  ///
  /// In en, this message translates to:
  /// **'Payments'**
  String get payments;

  /// No description provided for @paymentVouchers.
  ///
  /// In en, this message translates to:
  /// **'Payment vouchers'**
  String get paymentVouchers;

  /// No description provided for @pageCoupons.
  ///
  /// In en, this message translates to:
  /// **'Page coupons'**
  String get pageCoupons;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get finished;

  /// No description provided for @debitOrCreditCard.
  ///
  /// In en, this message translates to:
  /// **'Debit / credit card'**
  String get debitOrCreditCard;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @coupons.
  ///
  /// In en, this message translates to:
  /// **'Coupons'**
  String get coupons;

  /// No description provided for @appointments.
  ///
  /// In en, this message translates to:
  /// **'Appointments'**
  String get appointments;

  /// No description provided for @addContactToInvite.
  ///
  /// In en, this message translates to:
  /// **'To send the invitation add a contact from your list'**
  String get addContactToInvite;

  /// No description provided for @selectContact.
  ///
  /// In en, this message translates to:
  /// **'Select a contact'**
  String get selectContact;

  /// No description provided for @enterYourPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter your cell phone number'**
  String get enterYourPhone;

  /// No description provided for @sendInvitation.
  ///
  /// In en, this message translates to:
  /// **'Send Invitation'**
  String get sendInvitation;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get state;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @pricingDetails.
  ///
  /// In en, this message translates to:
  /// **'Pricing Details'**
  String get pricingDetails;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @service.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get service;

  /// No description provided for @cost.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get cost;

  /// No description provided for @dentalCleaning.
  ///
  /// In en, this message translates to:
  /// **'Dental cleaning'**
  String get dentalCleaning;

  /// No description provided for @subtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @percentage.
  ///
  /// In en, this message translates to:
  /// **'Percentage'**
  String get percentage;

  /// No description provided for @advanceNotApplied.
  ///
  /// In en, this message translates to:
  /// **'Advance not applied'**
  String get advanceNotApplied;

  /// No description provided for @pendingPayment.
  ///
  /// In en, this message translates to:
  /// **'Pending payment'**
  String get pendingPayment;

  /// No description provided for @go.
  ///
  /// In en, this message translates to:
  /// **'GO!'**
  String get go;

  /// No description provided for @youWantToCancel.
  ///
  /// In en, this message translates to:
  /// **'Do you want to cancel your appointment?'**
  String get youWantToCancel;

  /// No description provided for @evaluateAspects.
  ///
  /// In en, this message translates to:
  /// **'Evaluate the following aspects'**
  String get evaluateAspects;

  /// No description provided for @punctuality.
  ///
  /// In en, this message translates to:
  /// **'Punctuality'**
  String get punctuality;

  /// No description provided for @writeYourReview.
  ///
  /// In en, this message translates to:
  /// **'Write your review'**
  String get writeYourReview;

  /// No description provided for @attention.
  ///
  /// In en, this message translates to:
  /// **'Attention'**
  String get attention;

  /// No description provided for @hygiene.
  ///
  /// In en, this message translates to:
  /// **'Hygiene'**
  String get hygiene;

  /// No description provided for @cooperative.
  ///
  /// In en, this message translates to:
  /// **'Cooperative'**
  String get cooperative;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @bad.
  ///
  /// In en, this message translates to:
  /// **'Bad'**
  String get bad;

  /// No description provided for @just.
  ///
  /// In en, this message translates to:
  /// **'Just'**
  String get just;

  /// No description provided for @well.
  ///
  /// In en, this message translates to:
  /// **'Well'**
  String get well;

  /// No description provided for @excellent.
  ///
  /// In en, this message translates to:
  /// **'Excellent'**
  String get excellent;

  /// No description provided for @submitOpinion.
  ///
  /// In en, this message translates to:
  /// **'Submit opinion'**
  String get submitOpinion;

  /// No description provided for @patientReview.
  ///
  /// In en, this message translates to:
  /// **'Patient review'**
  String get patientReview;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
