import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactsScreen extends StatelessWidget {
  ContactsScreen({Key? key}) : super(key: key);

  final List<String> favoriteAvatars = [
    'https://randomuser.me/api/portraits/men/10.jpg',
    'https://randomuser.me/api/portraits/women/10.jpg',
    'https://randomuser.me/api/portraits/men/20.jpg',
    'https://randomuser.me/api/portraits/women/20.jpg',
    'https://randomuser.me/api/portraits/women/30.jpg',
  ];

  final List<Map<String, String>> recentTalks = [
    {
      'name': 'Stephanie J. Terry',
      'phone': '+91 9502889642',
      'avatar': 'https://randomuser.me/api/portraits/women/60.jpg'
    },
    {
      'name': 'Doyle J. Ackerson',
      'phone': '+91 9502889642',
      'avatar': 'https://randomuser.me/api/portraits/men/65.jpg'
    },
    {
      'name': 'Juanita R. Wagner',
      'phone': '+91 9502889642',
      'avatar': 'https://randomuser.me/api/portraits/men/12.jpg'
    },
    {
      'name': 'Juanita R. Wagner',
      'phone': '+91 9502889642',
      'avatar': 'https://randomuser.me/api/portraits/women/18.jpg'
    },
    {
      'name': 'Jacqueline Jones',
      'phone': '+91 9502889642',
      'avatar': 'https://randomuser.me/api/portraits/women/22.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new_rounded, color: Colors.grey[700]),
                  Text(
                    "CONTACTS",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: const Color(0xFF7367F0),
                    ),
                  ),
                  Icon(Icons.person_add_alt_1, color: Colors.grey[700]),
                ],
              ),
              const SizedBox(height: 20),
              // Search Bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    border: InputBorder.none,
                    hintText: "Search your contacts",
                    prefixIcon: const Icon(Icons.search, color: Color(0xFFbcbcbc)),
                    suffixIcon: const Icon(Icons.mic_none_rounded, color: Color(0xFFbcbcbc)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Favorite Section
              Text(
                "FAVOURITE",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey[600],
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 70,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: favoriteAvatars.length,
                  separatorBuilder: (context, index) => const SizedBox(width: 14),
                  itemBuilder: (context, index) => CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage(favoriteAvatars[index]),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Recent Talks Section
              Text(
                "RECENT TALKS",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey[600],
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  itemCount: recentTalks.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 14),
                  itemBuilder: (context, index) {
                    final talk = recentTalks[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 6,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 26,
                            backgroundImage: NetworkImage(talk['avatar']!),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  talk['name']!,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  talk['phone']!,
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey[500],
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.phone, color: Color(0xFF7367F0)),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.videocam_rounded, color: Color(0xFF7367F0)),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}