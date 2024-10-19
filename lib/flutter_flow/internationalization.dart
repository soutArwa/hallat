import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar', 'fr', 'zh_Hans'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
    String? frText = '',
    String? zh_HansText = '',
  }) =>
      [enText, arText, frText, zh_HansText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // getStarted
  {
    'wtof8va1': {
      'en': 'Ready to explore Saudi Arabia?',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '2dz0nx8a': {
      'en':
          'Immerse yourself in Saudi Arabian culture. From ancient ruins to vibrant cities,\n Let us guide you to the most authentic and unique experiences..\n Let\'s embark on a journey together.',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'kovlvwt5': {
      'en': 'Create Account',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '7zwa5ozc': {
      'en': 'Already have an account? ',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'dlj0pb9e': {
      'en': 'Sign In here',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'uxo88a5w': {
      'en': 'Ready to explore \nSaudi Arabia?',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '44l8ixza': {
      'en': 'Create Account',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'l12nwq2m': {
      'en': 'Already have an account?',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '27nhec08': {
      'en': ' Log In!',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'eezw343r': {
      'en': 'Home',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // signup-in
  {
    'ifqcftzd': {
      'en': 'Create Account',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'hoxmuyyw': {
      'en': 'Create Account',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '3gpaldrh': {
      'en': 'Let\'s get started by filling out the form below.',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ya7ipbsv': {
      'en': 'First name',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ilcy9zhs': {
      'en': 'Email',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'xd73xi7k': {
      'en': 'Password',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'psljjlhs': {
      'en': 'Get Started',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '9a8hfqqu': {
      'en': 'Or sign up with',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'zzu04aen': {
      'en': 'Continue with Google',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '0wgwq9so': {
      'en': 'Log In',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'wv7n530c': {
      'en': 'Welcome Back',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '6civ2lgw': {
      'en': 'Fill out the information below in order to access your account.',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'oto2ecua': {
      'en': 'Email',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '2o7zhisf': {
      'en': 'Password',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '6lh46qn6': {
      'en': 'Sign In',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ked4c4p2': {
      'en': 'Or sign in with',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'd3t4duqe': {
      'en': 'Continue with Google',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '9ryi5mxv': {
      'en': 'Forgot Password?',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'oc4o78tq': {
      'en': 'Home',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // Frogetpassword
  {
    '8xyqlgn8': {
      'en': 'Reset Password',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '5ye6rxvv': {
      'en':
          'Enter your email address we will send you a link to reset your password.\n',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '1oqpa2ld': {
      'en': 'Email',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'gutv8qc0': {
      'en': 'Continue',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'b2usmow2': {
      'en': 'Home',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // Alldone
  {
    'e67jcm9s': {
      'en': 'Reset Password',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '6h7e8f6k': {
      'en':
          'We have sent you an email with instructions to reset your password.',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'bcoy8fl2': {
      'en': 'Go to Login',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'dkr7dyh8': {
      'en': 'Home',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // personalization
  {
    'qyrc4t48': {
      'en': 'Discover Saudi Arabia Your Way!',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'rp37hpud': {
      'en':
          'Your personalized Saudi Arabian adventure starts here. Choose from a variety of activities, attractions, and accommodations.',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ngilkt8i': {
      'en': 'Anything specific you want to see or do?',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'pdpouimn': {
      'en': 'Cultural Heritage',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'xa66nsa3': {
      'en': 'Nature and Adventure',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ptbp95a2': {
      'en': 'City Exploration',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'jpfwcyjt': {
      'en': 'Wellness and Relaxation',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '0qxftfaq': {
      'en': 'Family-Friendly Activities',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'hy2zcp40': {
      'en': 'How do you prefer to get around?',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '0iraoxm5': {
      'en': 'Car',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'gkaelbef': {
      'en': 'public transportation',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'cznhqhl2': {
      'en': ' guided tours',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '72yy02vw': {
      'en': 'What kind of accommodations are you looking for?',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '8o1gb77y': {
      'en': 'Hotels',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'k2l9rkvp': {
      'en': 'resorts',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'k37yepk8': {
      'en': 'apartments',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '8a63i2fy': {
      'en': 'traditional guesthouses',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '0xxhr1m6': {
      'en': 'Traveling alone or with others?',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'vuzhql3p': {
      'en': 'Solo',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ovisms64': {
      'en': 'Couple',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '7zwl25rw': {
      'en': 'Family',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'rvvvn6gb': {
      'en': 'Group',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ezfx8dmy': {
      'en': 'Do you prefer a fast-paced or leisurely itinerary?',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '6beuyjgt': {
      'en': 'Fast-paced',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'jkdcixtu': {
      'en': 'Leisurely',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '01l0ddf2': {
      'en': 'We’ve got it! Let’s explore…',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'i81w8zn2': {
      'en': 'Home',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // HomePage
  {
    'tr80mn5d': {
      'en': 'Accommodation',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'zv7tbx83': {
      'en': 'accommodation booking options',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'd799yn70': {
      'en': 'Itinerary Planning',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'sk7wiqnw': {
      'en': 'ipersonalized \ntinerary planning\n',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '7omnchk1': {
      'en': 'Transportations',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'er7wg528': {
      'en': 'transportation options\n',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'xz3qnol6': {
      'en': 'Google Map',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'gm7degib': {
      'en': 'Explore destinations',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '0z3im2au': {
      'en': 'Light Mode',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'oz87xvrf': {
      'en': 'Dark Mode',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '44qm69ad': {
      'en': 'Log out',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ce6hqr9g': {
      'en': 'Settings',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'fpy6ura6': {
      'en': 'Welcome to Saudi Arabia',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ddxurgeu': {
      'en': 'Explore Destinations',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ku54qyfa': {
      'en': 'Popular Events',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'decm098h': {
      'en': 'Riyadh Season',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'xyrc0hz1': {
      'en': 'ALULA\n',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'kmosa2sq': {
      'en': 'Explore more Events',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'r5ayawop': {
      'en': 'nav',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // accommodation
  {
    'czprf420': {
      'en': 'The Ritz-Carlton',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'lwc693d8': {
      'en': 'Riyadh',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'yc3tismq': {
      'en': 'Our Habitas AlUla',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'a53wzn60': {
      'en': 'AlUla',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'nhoav4vd': {
      'en': 'for more',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'qcc9bnvz': {
      'en': 'To book your convenient hotel, click this link',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'tsfjq8vg': {
      'en': 'Home',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // googleMap
  {
    'xvld7s0t': {
      'en': 'Select Location',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '48bn1zhs': {
      'en': 'Google Map',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'bn4obpjc': {
      'en': 'Home',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // detailedDestination
  {
    'tostw9tr': {
      'en': 'Explore the Kingdom',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '8uhf1zdl': {
      'en': 'Discover landmarks, attractions, museums, and natural wonders',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'dm2a3tf3': {
      'en': 'Riyadh',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'zhoghyrj': {
      'en': 'The capital city, blending modernity with tradition',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'uk3zh8bo': {
      'en': 'Kingdom Centre',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'l8lo4zr9': {
      'en': 'National Museum',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'lcgm1kx1': {
      'en': 'Diriyah',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ev5i7ntz': {
      'en': 'Jeddah',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '3qb7k0cx': {
      'en': 'A coastal city with rich history and modern attractions',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'brz1cdby': {
      'en': 'Al-Balad',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '830q0xre': {
      'en': 'Jeddah Corniche',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    's6yi0l6j': {
      'en': 'Fakieh Aquarium',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '1i8hn8a4': {
      'en': 'AlUla',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'chg7di3o': {
      'en': 'An ancient oasis with stunning rock formations and archaeology',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ocrtm2bt': {
      'en': 'Hegra',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'pnhwxnfd': {
      'en': 'Elephant Rock',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'f8k6cx89': {
      'en': 'Old Town',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'bv8h3303': {
      'en': 'Abha',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '4cvepq9y': {
      'en': 'A mountainous region known for its pleasant climate and culture',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ntjhqrzu': {
      'en': 'Asir National Park',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    't92p542o': {
      'en': 'Al Muftaha Village',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'bznlei7i': {
      'en': 'Cable Car',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'fug9g0xa': {
      'en': 'Dammam',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'w3hd3azn': {
      'en': 'The heart of the Eastern Province with beautiful beaches',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '92t532bu': {
      'en': 'King Abdulaziz Center',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '8rdri6g0': {
      'en': 'Dammam Corniche',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '2dbdb84m': {
      'en': 'Heritage Village',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // transportation
  {
    'dqkxqcuw': {
      'en': 'Explore Saudi Arabia',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '70v94hfb': {
      'en': 'Choose your preferred mode of transport',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '7j34vgp3': {
      'en': 'Public Transportation',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'uzhk52ha': {
      'en': 'Buses',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'qw0etrnr': {
      'en': 'Trains',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '63w7ewoa': {
      'en': 'Private Transportation',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '2dwo1epy': {
      'en': 'Taxis',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'gud46x4x': {
      'en': 'Car Rentals',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '63rdbc4v': {
      'en': 'Guided Tours',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '6szwe447': {
      'en': 'City Tours',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ltk8ppwn': {
      'en': 'Desert Safaris',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ir52t8mz': {
      'en': 'Transportation Tips',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'bxm2wa70': {
      'en': 'Book in advance for better rates',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '2usjer2z': {
      'en': 'click to make sure of public decurm\ncharter',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '0oys90mb': {
      'en':
          'Road are generally well-maintained but \nmake cautios of driving in roral areas \nwhere signage may be limited',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // Events
  {
    'syc2alfd': {
      'en': 'Discover Events',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'wrpwy3wr': {
      'en': 'Explore cultural experiences across the Kingdom',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'n5meqvff': {
      'en': 'Enjoy different activities and an exciting and diverse experience',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'j1rjoh91': {
      'en': 'Upcoming',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'dvd7trv0': {
      'en':
          'A celebration of art, culture, and entertainment in the coastal city.',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ezk3hkkz': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '8k96xpaj': {
      'en': 'Ongoing',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    't4mo7cw4': {
      'en':
          'Experience music, art, and heritage in the ancient city of Al-Ula.',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'v7k70b3h': {
      'en': 'Al-Ula',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'd1kaztkr': {
      'en': 'date',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'c91gohik': {
      'en': 'price',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'hzhurlom': {
      'en': 'text',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '2po63s8v': {
      'en': 'Upcoming',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'vgdgiyyd': {
      'en': 'description',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'fm3pax5l': {
      'en': 'Taif',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'fghc66cx': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'n3u751ej': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ocyl0b1r': {
      'en': 'text',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'dp0huhfp': {
      'en': 'Upcoming',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '6nrgfd5d': {
      'en': 'description',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'advkysj3': {
      'en': 'location',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'wncqlfx1': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'tievrl4m': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'pso5fhlf': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'vgepeqp3': {
      'en': 'Ongoing',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'r6e6orwo': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'e42rsrg9': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'z2uwqyu2': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'jcbmvz3r': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '4tr7wyfn': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'yl7pons7': {
      'en': 'Upcoming',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'vss19ppg': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '3kzurfms': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'hjcbwm89': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'crents2u': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'subfxgmk': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'hf0oftlo': {
      'en': 'Upcoming',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'pk42qzr7': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ozirhy4d': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'rkcdiunt': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'kkxevlva': {
      'en': 'Hello World',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'j8sb9eqy': {
      'en': 'EVENTS',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // itinirary
  {
    '2visw23w': {
      'en': 'Create Your Journey',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'gb7rzu13': {
      'en': 'Build a timeline for your Saudi adventure',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'lt84pllm': {
      'en': 'Add Destination',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '6uzhtpvd': {
      'en': 'Riyadh',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'zehzrbo0': {
      'en': 'Al-Ula',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '0ninhx20': {
      'en': 'Jeddah',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '5e1arpx1': {
      'en': 'Taif',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ieni4bit': {
      'en': 'Aseer',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'cf70r0s9': {
      'en': 'Select a destination',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'pdnknunb': {
      'en': 'Date and Time',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '0jjru143': {
      'en': 'Add to Timeline',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'ij09c5yy': {
      'en': 'Your Trip Timeline',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'clx6haja': {
      'en': 'Start your journey in the capital',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'jgu01lgp': {
      'en': 'itenerary planning',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'dsevfbon': {
      'en': 'Home',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // Settings
  {
    '6uojtdrl': {
      'en': 'Name',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'u9hpndle': {
      'en': 'Email',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '3835vi2u': {
      'en': 'Save Changes',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '4swzl62s': {
      'en': 'Change Password',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '35r7g76l': {
      'en': 'Log Out',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
  // Miscellaneous
  {
    '4u6ixnjq': {
      'en':
          'This app requires access to your location to provide accurate map services and help you select locations.',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'y0148a4y': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'yf7kdavh': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'zpf5f8qh': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '2rzetc8t': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'gzdgv032': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '0pj2ykkg': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'rghodkkx': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'hshbjcjp': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '6hjltqzd': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '8if0qdjr': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'khsjiyzn': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'dtxvpi1w': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'sc85gfzh': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'j6dyoa4y': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'lbjjg7l7': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'mydf62vr': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'wynhba2t': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'bo4hsnuq': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'w7nym5a9': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'tatkskja': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'm5ayf337': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'alp6w1fw': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '1dyxduge': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    '2t4ay7d7': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
    'pef7ci3k': {
      'en': '',
      'ar': '',
      'fr': '',
      'zh_Hans': '',
    },
  },
].reduce((a, b) => a..addAll(b));
