import 'package:billy_bills_reminder_app/models/category_model.dart';
import 'package:billy_bills_reminder_app/models/subcategory_model.dart';
import 'package:flutter/material.dart';

// Colors
const Color primaryColor = Color(0xFF01648A);
const Color secondaryColor = Color(0xFF63CDF6);
const Color upcomingColor = Color(0xFFFFC404);
const Color overdueColor = Color(0xFFFF8204);
const Color paidColor = Color(0xFFA7FF04);
const Color highlightColor = Color(0xFFC7C7C7);

// Onboarding Features
const String onboardingFeature1 = "Add and Manage your bills in one place";
const String onboardingFeature2 =
    "Get Notified when it’s time to pay your bill";
const String onboardingFeature3 = "Reports & Insights on your expenses";
const String onboardingFeature4 = "Supports multiple languages & currencies";

List<CategoryModel> billCategories = [
  CategoryModel(
    name: "Utilities",
    icon: Icons.system_update_tv_outlined,
    subCategories: <SubCategoryModel>[
      SubCategoryModel(name: "Electricity", icon: Icons.electric_bolt_outlined),
      SubCategoryModel(name: "Water", icon: Icons.water_drop_outlined),
      SubCategoryModel(name: "Internet ", icon: Icons.wifi_outlined),
      SubCategoryModel(name: "Gas", icon: Icons.gas_meter_outlined),
      SubCategoryModel(name: "Mobile", icon: Icons.phone_android_outlined),
      SubCategoryModel(name: "Phone", icon: Icons.phone_outlined)
    ],
  ),
  CategoryModel(
      name: "Entertainment & Subscription",
      icon: Icons.tv,
      subCategories: <SubCategoryModel>[
        SubCategoryModel(
            name: "Streaming Service", icon: Icons.stream_outlined),
        SubCategoryModel(name: "Gaming Service", icon: Icons.gamepad_outlined),
        SubCategoryModel(name: "Music", icon: Icons.music_note_outlined),
        SubCategoryModel(
            name: "Newspapers & Magazines", icon: Icons.newspaper_outlined),
      ]),
  CategoryModel(
      name: "Education",
      icon: Icons.school,
      subCategories: <SubCategoryModel>[
        SubCategoryModel(name: "School fee", icon: Icons.school_outlined),
        SubCategoryModel(
            name: "Tuition fee",
            image: Image.asset("assets/images/categories/tuition-fee.png")),
        SubCategoryModel(
            name: "Courses/ Workshops Service",
            image: Image.asset(
                "assets/images/categories/courses-workshops-service.png")),
        SubCategoryModel(name: "Ebooks", icon: Icons.book_outlined),
      ]),
  CategoryModel(
      name: "Health & Fitness",
      icon: Icons.favorite,
      subCategories: <SubCategoryModel>[
        SubCategoryModel(name: "Gym", icon: Icons.sports_gymnastics_outlined),
        SubCategoryModel(
            name: "Dentist",
            image: Image.asset("assets/images/categories/dentist.png")),
        SubCategoryModel(name: "Doctor", icon: Icons.local_hospital_outlined),
      ]),
  CategoryModel(
      name: "Transport",
      icon: Icons.emoji_transportation,
      subCategories: <SubCategoryModel>[
        SubCategoryModel(
            name: "Parking",
            image: Image.asset("assets/images/categories/parking.png")),
        SubCategoryModel(
            name: "Car Rental",
            image: Image.asset("assets/images/categories/car-rental.png")),
        SubCategoryModel(
            name: "Car Maintenance",
            image: Image.asset("assets/images/categories/car-maintenance.png")),
        SubCategoryModel(
            name: "Public Transport",
            image:
                Image.asset("assets/images/categories/public-transport.png")),
        SubCategoryModel(
            name: "Fuel & Gas",
            image: Image.asset("assets/images/categories/fuel-gas.png")),
      ]),
  CategoryModel(
    name: "Home",
    icon: Icons.home,
    subCategories: [
      SubCategoryModel(name: "Home Rental", icon: Icons.home_outlined),
      SubCategoryModel(
          name: "Home Maintenance",
          image: Image.asset("assets/images/categories/home-maintenance.png")),
      SubCategoryModel(
          name: "Home Supplies",
          image: Image.asset("assets/images/categories/home-supplies.png"))
    ],
  ),
  CategoryModel(
    name: "Food & Drinks",
    icon: Icons.fastfood_outlined,
    subCategories: [
      SubCategoryModel(
          name: "Meals Service",
          image: Image.asset("assets/images/categories/meals-service.png")),
      SubCategoryModel(
          name: "Food Delivery",
          image: Image.asset("assets/images/categories/food-delivery.png")),
      SubCategoryModel(
          name: "Restaurant",
          image: Image.asset("assets/images/categories/restaurant.png"))
    ],
  ),
  CategoryModel(
    name: "Loans",
    icon: Icons.lan_outlined,
    subCategories: [
      SubCategoryModel(
          name: "Home Loans",
          image: Image.asset("assets/images/categories/home-loans.png")),
      SubCategoryModel(
          name: "Automotive Loans",
          image: Image.asset("assets/images/categories/automotive-loans.png")),
      SubCategoryModel(
          name: "Personal Loans",
          image: Image.asset("assets/images/categories/personal-loans.png")),
      SubCategoryModel(
          name: "Credit Card Loans",
          image: Image.asset("assets/images/categories/credit-card-loans.png")),
    ],
  ),
  CategoryModel(
    name: "Insurance",
    icon: Icons.safety_check_outlined,
    subCategories: [
      SubCategoryModel(
          name: "Health Insurance",
          image: Image.asset("assets/images/categories/health-insurance.png")),
      SubCategoryModel(
          name: "Property Insurance",
          image:
              Image.asset("assets/images/categories/property-insurance.png")),
      SubCategoryModel(
          name: "Automotive Insurance",
          image:
              Image.asset("assets/images/categories/automotive-insurance.png")),
    ],
  ),
  CategoryModel(
    name: "Miscellaneous Expenses",
    icon: Icons.attach_money_outlined,
    subCategories: [
      SubCategoryModel(
          name: "Charitable Donations",
          image:
              Image.asset("assets/images/categories/charitable-donations.png")),
      SubCategoryModel(
          name: "Legal fees",
          image: Image.asset("assets/images/categories/legal-fees.png")),
      SubCategoryModel(
          name: "Miscellaneous",
          image: Image.asset("assets/images/categories/miscellaneous.png")),
    ],
  ),
  CategoryModel(
    name: "Taxes",
    icon: Icons.local_taxi,
    subCategories: [
      SubCategoryModel(
          name: "Income Taxes",
          image: Image.asset("assets/images/categories/income-taxes.png")),
      SubCategoryModel(
          name: "Property Taxes",
          image: Image.asset("assets/images/categories/property-taxes.png")),
      SubCategoryModel(
          name: "Sales Taxes",
          image: Image.asset("assets/images/categories/sales-taxes.png")),
      SubCategoryModel(
          name: "Employment Taxes",
          image: Image.asset("assets/images/categories/employment-taxes.png")),
    ],
  ),
  CategoryModel(
      name: "Investments", subCategories: [], icon: Icons.currency_exchange),
  CategoryModel(
      name: "Financial Services",
      icon: Icons.find_replace_outlined,
      subCategories: []),
  CategoryModel(
    name: "Groceries",
    icon: Icons.local_grocery_store_outlined,
    subCategories: [],
  ),
  CategoryModel(
    name: "Others",
    icon: Icons.work_outline_sharp,
    subCategories: [],
  ),
];
