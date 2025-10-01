import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:stonewise/utilites/common_colour.dart';
import 'package:stonewise/utilites/getselected_screen.dart';

class HomeScreen extends StatefulWidget {
  final String scannedBarcode;

  const HomeScreen({super.key, required this.scannedBarcode});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Map<int, bool> mainMenuExpanded = {};
  final Map<int, Map<int, bool>> subMenuExpanded = {};
  String? selectedMainItem;
  String selectedSubItem = "";
  String? selectedSubItemss;

  // Map<String, WindowController> openWindows = {};

  // void openNewWindow(String selectedScreen) async {
  //   if (openWindows.containsKey(selectedScreen)) {
  //     openWindows[selectedScreen]!.close();
  //     openWindows.remove(selectedScreen);
  //   }

  //   final WindowController window =
  //       await DesktopMultiWindow.createWindow(jsonEncode({
  //     'selectedScreen': selectedScreen,
  //   }));

  //   window
  //     ..setFrame(const Offset(100, 100) & const Size(1100, 800))
  //     ..center()
  //     ..setTitle('Stone Wise Technology - $selectedScreen')
  //     ..show();

  //   openWindows[selectedScreen] = window;

  //   await Future.delayed(const Duration(milliseconds: 100));

  //   DesktopMultiWindow.setMethodHandler((call, _) async {
  //     if (call.method == 'onClose' && call.arguments == selectedScreen) {
  //       openWindows.remove(selectedScreen);
  //     }
  //   });

  //   await DesktopMultiWindow.invokeMethod(window.windowId, 'trackClose', {
  //     'selectedScreen': selectedScreen,
  //   });
  // }

  final List<Map<String, dynamic>> menuItems = [
    {
      'mainmenu': 'Features',
      'subMenu': [
        {
          'name': 'Language',
          'subitem': [
            'Gujarti',
            'English',
          ],
        },
        {
          'name': 'Dashboard',
          'subitem': [],
        },
        {
          'name': 'Boss Department',
          'subitem': [
            'Firm Master',
            'Kapan Master',
            'Cent (Dora) Master',
            'Diameter (Charni) Master',
            'Planner, Checker Master',
            'Planning/ Pcs Lab. Master',
            'Galaxy Size Labour Master',
            'Customize Report Master',
            'Cut/ Color/ Clarity Master',
            'Stone Search',
            'Galaxy Stone Report',
          ],
        },
        {
          'name': 'Mac  QR/QR Calculator',
          'subitem': [
            'QR Box No Master',
            'Qr Scanner - Calculator',
            'Qr Scanner - Calculator Report',
            'Macabel Qr Scanning Entry',
            'Macabel Qr Scanning Report',
          ],
        },
        {
          'name': 'Off/ Fac. Salary Department',
          'subitem': [
            'Department Master',
            'employee Master',
            'Employee Daily Entry',
            'Employee Monthly Entry',
            'Employee Payment Entry',
            'Employee Report',
            'daily Book : Issue Rec. Entry',
          ],
        },
        {
          'name': 'Checker Department',
          'subitem': [],
        },
        {
          'name': 'Planner Department',
          'subitem': [],
        },
        {
          'name': 'Galaxy Manager',
          'subitem': [],
        },
      ],
    },
    {
      'mainmenu': 'Data Entry',
      'subMenu': [
        {
          'name': 'C.V.D. Growing',
          'subitem': [
            'Seed Inward Entry',
            'Seed Lotting Entry',
            'Seed : Issue Rec. Entry',
            'Seed Separation Entry',
            'Seed Inward Report',
            'Seed Lotting Report',
            'Seed : Issue Rec. Report',
            'Seed Separation Report',
          ],
        },
        {
          'name': 'Galaxy Department',
          'subitem': [
            'Main Kapan Master',
            'Assort Kapan Master',
            'Manager Issue Kapan Master',
            'Process Master',
            'Employee Master',
            'Process To Process Master',
            'Process Wise Labour Master',
            'Galaxy Lotting Entry',
            'Cleaving: Issue Rec. Entry',
            'MFG : Issue Rec. Entry',
            'Galaxy Lotting Report',
            'Cleaving : Issue Rec. Report',
            'MFG : Issue Rec. Report',
            'Labour Report',
            'Daily Book : Issue Rec. Entry',
            'Daily Book : Issue Rec. Report',
          ],
        },
        {
          'name': 'Manual CLV Department',
          'subitem': [
            'kapan Master',
            'CLV Process Master',
            'CLV Employee Master',
            'Manual CLV Issue Entry',
            'Manual CLV Rec. Entry',
            'Manual CLV Issue Report',
            'Manual CLV Rec. Report',
            'Manual CLV Stock Report',
            'Laser Chapka Issue Entry',
            'Laser Rec. Boil Issue Entry',
            'Laser Chapka Rec. Entry',
            'Laser Chapka Issue Report',
            'Laser Rec. Boil Issue Report',
            'Laser Chapka Rec. Report',
            'Laser Chapka Stock Report',
          ]
        },
        {
          'name': 'Manual MFG Department',
          'subitem': [
            'Factory Master',
            'Quality Master',
            'Charni Wise Labour Master',
            'Manual Lotting Entry',
            'Manual Issue/ Rec. Entry',
            'Manual Lotting Report',
            'Manual Issue/ Rec. Report',
            'Factory Report',
            'Repairing Issue Entry',
            'Repairing Receive Entry',
            'Repairing Issue Report',
            'Repairing Receive Report',
            'Rough Final Entry',
            'Polished Assortment Entry',
          ]
        },
        {
          'name': '4P/ TR/ Factory Department',
          'subitem': [
            'Galaxy Department Entry',
            'Galaxy Department Report',
            'Sarin department Entry',
            'Sarin Department Report',
            'Laser Issue Rec. Entry',
            'Laser Issue Rec. Report',
            '4P Department Entry',
            '4P Department Report',
            'TR Department Entry',
            'TR Department Report',
            'Factory Department Entry',
            'Factory Department Report',
            'Fancy Shape Department Entry',
            'Fancy Shape Department Report',
            'GIA/ IGI Department Entry',
            'GIA/ IGI Department Report',
          ]
        },
        {
          'name': 'Off/ Fac. Salary Department',
          'subitem': [
            'Department Master',
            'employee Master',
            'Employee Daily Entry',
            'Employee Monthly Entry',
            'Employee Payment Entry',
            'Employee Report',
            'daily Book : Issue Rec. Entry',
          ],
        },
        {
          'name': 'Stock Tally',
          'subitem': [],
        },
        {
          'name': 'Stock',
          'subitem': [],
        },
      ],
    },
  ];

  bool isSelected = false;
  String userId = '';
  String userEmail = '';
  String selectedButton = '';
  int subitemindex = 0;
  int? subenuindex;

  // getUser() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     userEmail = prefs.getString('user_email') ?? '';
  //     userId = prefs.getString('user_id') ?? '';
  //   });
  // }

  // getMacableScreen() async {
  //   print("==== user ID ====> ${userId}");
  //   mainMenuExpanded[1] = true;

  //   if (widget.scannedBarcode != "") {
  //     selectedSubItemss = "Macable Qr Scanning Entry";
  //     mainMenuExpanded[0] = true;

  //     int mainIndex = -1;
  //     int subIndex = -1;

  //     for (int i = 0; i < menuItems.length; i++) {
  //       var mainMenu = menuItems[i];

  //       for (int j = 0; j < mainMenu['subMenu'].length; j++) {
  //         var subMenu = mainMenu['subMenu'][j];

  //         if (subMenu['name'] == 'Mac QR/ QR Calculator') {
  //           mainIndex = i;

  //           List<String> subItems = List<String>.from(subMenu['subitem']);
  //           subIndex = subItems.indexOf("Macable Qr Scanning Entry");

  //           break;
  //         }
  //       }
  //       if (mainIndex != -1 && subIndex != -1) break;
  //     }

  //     if (mainIndex != -1 && subIndex != -1) {
  //       subitemindex = subIndex;
  //       mainMenuExpanded[mainIndex] = true;
  //       subMenuExpanded[mainIndex] = {subIndex: true};
  //       WidgetsBinding.instance.addPostFrameCallback((_) {
  //         setState(() {
  //           mainMenuExpanded[mainIndex] = true;
  //         });
  //         if (widget.scannedBarcode.isNotEmpty) {
  //           print("=== userId ===->> here ==>${userId}");
  //           Navigator.push(
  //               context,
  //               DialogRoute(
  //                 con context,
  //                 builder: (context) => MacableQrScanningEntryDialog(
  //                   scannedBarcode: widget.scannedBarcode,
  //                   userId: userId,
  //                 ),
  //               ));
  //         }
  //       });
  //     }

  //     print("Scanned Barcode: ${widget.scannedBarcode}");
  //     print("Main Menu Index: $mainIndex");
  //     print("Submenu Index: $subIndex");
  //     print("Expanded Menus: $subMenuExpanded");
  //   }
  // }

  // syncData() async {
  //   await getUser();
  //   await getMacableScreen();
  // }

  @override
  void initState() {
    // syncData();
    super.initState();
  }

  // Future<void> logout(BuildContext context) async {
  //   try {
  //     FirebaseAuth auth = FirebaseAuth.instance;

  //     await auth.signOut();

  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     await prefs.clear();

  //     await Future.delayed(const Duration(milliseconds: 500));

  //     if (context.mounted) {
  //       Navigator.of(context).pushAndRemoveUntil(
  //         MaterialPageRoute(builder: (_) => const LoginScreen()),
  //         (route) => false,
  //       );
  //     }

  //     log("User successfully logged out");
  //   } catch (e) {
  //     log("Error during logout: $e");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // ProgressLoader pl = ProgressLoader(context, isDismissible: true);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 5),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    textAlign: TextAlign.start,
                    "Utility",
                    style: TextStyle(
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "assets/fonts/Mulish-Medium.ttf"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
            color: appColors.primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Update: ",
                      style: TextStyle(
                        color: appColors.whiteColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      textAlign: TextAlign.start,
                      "08-08-2024",
                      style: TextStyle(
                        color: appColors.whiteColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      textAlign: TextAlign.start,
                      "[PREDICTION]",
                      style: TextStyle(
                        color: appColors.whiteColor,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  textAlign: TextAlign.start,
                  "TheWebHub Technology - Running with Technology....",
                  style: TextStyle(
                    color: appColors.whiteColor,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 350,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: appColors.whiteColor,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: appColors.primaryColor, width: 3),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: menuItems.length,
                          itemBuilder: (context, mainIndex) {
                            final mainMenu = menuItems[mainIndex];
                            final isMainExpanded =
                                mainMenuExpanded[mainIndex] ?? false;

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // log("menuItems[mainIndex]===>${menuItems[mainIndex]}");
                                    setState(() {
                                      if (mainMenu['subMenu'].isEmpty) {
                                        selectedMainItem = mainMenu['mainmenu'];
                                        log("menuItems[mainIndex]===>${selectedMainItem}");
                                        mainMenuExpanded.clear();
                                        subMenuExpanded.clear();
                                      } else {
                                        if (mainMenuExpanded[mainIndex] ==
                                            true) {
                                          log("menuItems[mainIndex]===>${selectedMainItem}");

                                          mainMenuExpanded[mainIndex] = false;
                                        } else {
                                          mainMenuExpanded.clear();
                                          subMenuExpanded.clear();
                                          mainMenuExpanded[mainIndex] = true;
                                        }
                                        selectedMainItem = null;
                                      }
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 12.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          mainMenu['mainmenu'],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SvgPicture.asset(
                                          isMainExpanded
                                              ? "assets/svg/up_arrow.svg"
                                              : "assets/svg/down_arrow.svg",
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                if (isMainExpanded)
                                  ListView.builder(
                                    itemCount: mainMenu['subMenu'].length,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, subIndex) {
                                      final subMenu =
                                          mainMenu['subMenu'][subIndex];
                                      subenuindex = subIndex;
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                bool isCurrentlyExpanded =
                                                    subMenuExpanded[mainIndex]
                                                            ?[subIndex] ??
                                                        false;
                                                subMenuExpanded.clear();
                                                subMenuExpanded[mainIndex] = {};
                                                if (subMenu['subitem']
                                                    .isNotEmpty) {
                                                  subMenuExpanded[mainIndex]![
                                                          subIndex] =
                                                      !isCurrentlyExpanded;
                                                } else {
                                                  selectedSubItem =
                                                      subMenu['name'];
                                                  Navigator.push(
                                                    context,
                                                    DialogRoute(
                                                      context: context,
                                                      builder: (context) =>
                                                          getSelectedScreen(
                                                        subMenu['name'],
                                                      ),
                                                    ),
                                                  );
                                                }
                                              });
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: selectedSubItem ==
                                                        subMenu['name']
                                                    ? appColors.primaryColor
                                                    : Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                border: Border.all(
                                                  color:
                                                      const Color(0xffD1D1D1),
                                                  width: 1,
                                                ),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5,
                                                      vertical: 10),
                                              margin: const EdgeInsets.all(10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10),
                                                    child: Text(
                                                      subMenu['name'],
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            selectedSubItem ==
                                                                    subMenu[
                                                                        'name']
                                                                ? appColors
                                                                    .whiteColor
                                                                : appColors
                                                                    .blackColor,
                                                      ),
                                                    ),
                                                  ),
                                                  if (subMenu['subitem']
                                                      .isNotEmpty)
                                                    SvgPicture.asset(
                                                      subMenuExpanded[mainIndex]
                                                                  ?[subIndex] ==
                                                              true
                                                          ? "assets/svg/up_arrow.svg"
                                                          : "assets/svg/down_arrow.svg",
                                                      color: selectedSubItem ==
                                                              subMenu['name']
                                                          ? appColors.whiteColor
                                                          : appColors
                                                              .blackColor,
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          if (subMenuExpanded[mainIndex]
                                                      ?[subIndex] ==
                                                  true &&
                                              subMenu['subitem'].isNotEmpty)
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                decoration: BoxDecoration(
                                                  color: appColors.primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: ListView.builder(
                                                  itemCount:
                                                      subMenu['subitem'].length,
                                                  shrinkWrap: true,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  itemBuilder:
                                                      (context, itemIndex) {
                                                    subitemindex = itemIndex;
                                                    String subItem =
                                                        subMenu['subitem']
                                                            [itemIndex];
                                                    final isSelected =
                                                        subItem ==
                                                            selectedSubItemss;

                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            selectedSubItemss =
                                                                subItem;
                                                            selectedSubItem =
                                                                subMenu['name'];
                                                            log("itemIndex====>$subitemindex");
                                                            log("subItem====>$subItem");
                                                            mainMenuExpanded
                                                                .clear();
                                                            mainMenuExpanded[
                                                                    mainIndex] =
                                                                true;
                                                          });
                                                          Navigator.push(
                                                            context,
                                                            DialogRoute(
                                                              context: context,
                                                              builder: (context) =>
                                                                  getSelectedScreen(
                                                                subItem,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            children: [
                                                              isSelected
                                                                  ? SvgPicture
                                                                      .asset(
                                                                      "assets/svg/Union.svg",
                                                                      color: appColors
                                                                          .whiteColor,
                                                                    )
                                                                  : Container(),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        10,
                                                                    vertical:
                                                                        10),
                                                                child: Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  subItem,
                                                                  style: TextStyle(
                                                                      color: isSelected
                                                                          ? appColors
                                                                              .blackColor
                                                                          : appColors
                                                                              .whiteColor,
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                              ),
                                                            ]),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                        ],
                                      );
                                    },
                                  ),
                                // if (isMainExpanded)
                                //   ListView.builder(
                                //     itemCount: mainMenu['subMenu'].length,
                                //     shrinkWrap: true,
                                //     physics:
                                //         const NeverScrollableScrollPhysics(),
                                //     itemBuilder: (context, subIndex) {
                                //       final subMenu =
                                //           mainMenu['subMenu'][subIndex];
                                //       subenuindex = subIndex;
                                //       return Column(
                                //         crossAxisAlignment:
                                //             CrossAxisAlignment.start,
                                //         children: [
                                //           GestureDetector(
                                //             onTap: () {
                                //               setState(() {
                                //                 bool isCurrentlyExpanded =
                                //                     subMenuExpanded[mainIndex]
                                //                             ?[subIndex] ??
                                //                         false;
                                //                 subMenuExpanded.clear();
                                //                 subMenuExpanded[mainIndex] = {};
                                //                 if (subMenu['subitem']
                                //                     .isNotEmpty) {
                                //                   subMenuExpanded[mainIndex]![
                                //                           subIndex] =
                                //                       !isCurrentlyExpanded;
                                //                 } else {
                                //                   selectedSubItem =
                                //                       subMenu['name'];
                                //                   if (subMenu['name'] ==
                                //                       'Qr Scanner - Calculator') {
                                //                     showDialog(
                                //                       context: context,
                                //                       barrierDismissible: false,
                                //                       builder: (context) =>
                                //                           getSelectedScreen(
                                //                               'Qr Scanner - Calculator'),
                                //                     );
                                //                   }
                                //                 }
                                //               });
                                //             },
                                //             child: Container(
                                //               decoration: BoxDecoration(
                                //                 color: selectedSubItem ==
                                //                         subMenu['name']
                                //                     ? appColors.primaryColor
                                //                     : Colors.transparent,
                                //                 borderRadius:
                                //                     BorderRadius.circular(10),
                                //                 border: Border.all(
                                //                   color:
                                //                       const Color(0xffD1D1D1),
                                //                   width: 1,
                                //                 ),
                                //               ),
                                //               padding:
                                //                   const EdgeInsets.symmetric(
                                //                       horizontal: 5,
                                //                       vertical: 10),
                                //               margin: const EdgeInsets.all(10),
                                //               child: Row(
                                //                 mainAxisAlignment:
                                //                     MainAxisAlignment
                                //                         .spaceBetween,
                                //                 children: [
                                //                   Padding(
                                //                     padding: const EdgeInsets
                                //                         .symmetric(
                                //                         horizontal: 10),
                                //                     child: Text(
                                //                       subMenu['name'],
                                //                       style: TextStyle(
                                //                         fontWeight:
                                //                             FontWeight.bold,
                                //                         color:
                                //                             selectedSubItem ==
                                //                                     subMenu[
                                //                                         'name']
                                //                                 ? appColors
                                //                                     .whiteColor
                                //                                 : appColors
                                //                                     .blackColor,
                                //                       ),
                                //                     ),
                                //                   ),
                                //                   if (subMenu['subitem']
                                //                       .isNotEmpty)
                                //                     SvgPicture.asset(
                                //                       subMenuExpanded[mainIndex]
                                //                                   ?[subIndex] ==
                                //                               true
                                //                           ? "assets/svg/up_arrow.svg"
                                //                           : "assets/svg/down_arrow.svg",
                                //                       color: selectedSubItem ==
                                //                               subMenu['name']
                                //                           ? appColors.whiteColor
                                //                           : appColors
                                //                               .blackColor,
                                //                     ),
                                //                 ],
                                //               ),
                                //             ),
                                //           ),
                                //           if (subMenuExpanded[mainIndex]
                                //                       ?[subIndex] ==
                                //                   true &&
                                //               subMenu['subitem'].isNotEmpty)
                                //             Padding(
                                //               padding:
                                //                   const EdgeInsets.symmetric(
                                //                       horizontal: 8),
                                //               child: Container(
                                //                 padding:
                                //                     const EdgeInsets.symmetric(
                                //                         vertical: 10),
                                //                 decoration: BoxDecoration(
                                //                   color: appColors.primaryColor,
                                //                   borderRadius:
                                //                       BorderRadius.circular(10),
                                //                 ),
                                //                 child: ListView.builder(
                                //                   itemCount:
                                //                       subMenu['subitem'].length,
                                //                   shrinkWrap: true,
                                //                   physics:
                                //                       const NeverScrollableScrollPhysics(),
                                //                   itemBuilder:
                                //                       (context, itemIndex) {
                                //                     subitemindex = itemIndex;
                                //                     String subItem =
                                //                         subMenu['subitem']
                                //                             [itemIndex];
                                //                     final isSelected =
                                //                         subItem ==
                                //                             selectedSubItemss;

                                //                     return Padding(
                                //                       padding:
                                //                           const EdgeInsets.only(
                                //                               left: 10),
                                //                       child: GestureDetector(
                                //                         onTap: () {
                                //                           setState(() {
                                //                             selectedSubItemss =
                                //                                 subItem;
                                //                             selectedSubItem =
                                //                                 subMenu['name'];
                                //                           });

                                //                           if (subItem == 'Dashboard' ||
                                //                               subItem ==
                                //                                   'Firm Master' ||
                                //                               subItem ==
                                //                                   'Kapan Master' ||
                                //                               subItem ==
                                //                                   'Planner, Checker Master' ||
                                //                               subItem ==
                                //                                   'Customize Report Master' ||
                                //                               subItem ==
                                //                                   'Diameter (Charni) Master' ||
                                //                               subItem ==
                                //                                   'Planning/ Pcs Lab. Master' ||
                                //                               subItem ==
                                //                                   'Galaxy Size Labour Master' ||
                                //                               subItem ==
                                //                                   'Customize Report Master' ||
                                //                               subItem ==
                                //                                   'Cut/ Color/ Clarity Master' ||
                                //                               subItem ==
                                //                                   'Stone Search' ||
                                //                               subItem ==
                                //                                   'Galaxy Stone Report' ||
                                //                               subItem ==
                                //                                   'Qr Box No Master' ||
                                //                               subItem ==
                                //                                   'Qr Scanner - Calculator Report') {
                                //                             showDialog(
                                //                               context: context,
                                //                               barrierDismissible:
                                //                                   false,
                                //                               builder: (context) =>
                                //                                   getSelectedScreen(
                                //                                       subItem),
                                //                             );
                                //                           }
                                //                         },
                                //                         child: Stack(
                                //                             alignment: Alignment
                                //                                 .centerLeft,
                                //                             children: [
                                //                               isSelected
                                //                                   ? SvgPicture
                                //                                       .asset(
                                //                                       "assets/svg/Union.svg",
                                //                                       color: appColors
                                //                                           .whiteColor,
                                //                                     )
                                //                                   : Container(),
                                //                               Padding(
                                //                                 padding: const EdgeInsets
                                //                                     .symmetric(
                                //                                     horizontal:
                                //                                         10,
                                //                                     vertical:
                                //                                         10),
                                //                                 child: Text(
                                //                                   textAlign:
                                //                                       TextAlign
                                //                                           .start,
                                //                                   subItem,
                                //                                   style: TextStyle(
                                //                                       color: isSelected
                                //                                           ? appColors
                                //                                               .blackColor
                                //                                           : appColors
                                //                                               .whiteColor,
                                //                                       fontSize:
                                //                                           15),
                                //                                 ),
                                //                               ),
                                //                             ]),
                                //                       ),
                                //                     );
                                //                   },
                                //                 ),
                                //               ),
                                //             ),
                                //         ],
                                //       );
                                //     },
                                //   ),
                              ],
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () async {
                          // await pl.show();
                          // if (context.mounted) {
                          //   await logout(context);
                          // }
                          // await pl.show();
                        },
                        child: Container(
                          height: 55,
                          width: 200,
                          decoration: BoxDecoration(
                              color: appColors.primaryColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: Text(
                            "Exit",
                            style: TextStyle(
                                fontSize: 22, color: appColors.whiteColor),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
                // Expanded(
                //   child: Column(
                //     children: [
                //       Expanded(
                //         child: Center(
                //             child:
                //                 SvgPicture.asset("assets/svg/white_logo.svg")),
                //       ),
                //     ],
                //   ),
                // ),

                //Logo screen
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [SvgPicture.asset('assets/svg/tradmark.svg')],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
