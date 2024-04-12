import 'dart:math';

final random = Random();

final List<Map<String, dynamic>> tradeItems = [
  {"name": "Apple Inc.", "price": random.nextDouble() * 1000},
  {"name": "Google LLC", "price": random.nextDouble() * 1000},
  {"name": "Amazon.com Inc.", "price": random.nextDouble() * 1000},
  {"name": "Tesla Inc.", "price": random.nextDouble() * 1000},
  {"name": "Meta Platforms Inc.", "price": random.nextDouble() * 1000},
  {"name": "Microsoft Corporation", "price": random.nextDouble() * 1000},
  {"name": "Samsung Electronics", "price": random.nextDouble() * 1000},
  {"name": "NVIDIA Corporation", "price": random.nextDouble() * 1000},
  {"name": "Alibaba Group Holding Ltd.", "price": random.nextDouble() * 1000},
  {"name": "Tencent Holdings Ltd.", "price": random.nextDouble() * 1000},
];

final List<Map<String, dynamic>> fullData = [
  {"name": "Johnson & Johnson", "price": random.nextDouble() * 1000},
  {"name": "Berkshire Hathaway Inc.", "price": random.nextDouble() * 1000},
  {"name": "JPMorgan Chase & Co.", "price": random.nextDouble() * 1000},
  {"name": "Bank of America Corporation", "price": random.nextDouble() * 1000},
  {"name": "Walmart Inc.", "price": random.nextDouble() * 1000},
  {"name": "Exxon Mobil Corporation", "price": random.nextDouble() * 1000},
  {"name": "Saudi Aramco", "price": random.nextDouble() * 1000},
  {
    "name": "Industrial and Commercial Bank of China",
    "price": random.nextDouble() * 1000
  },
  {"name": "Sequoia Capital", "price": random.nextDouble() * 1000},
  {"name": "BlackRock Inc.", "price": random.nextDouble() * 1000},
  {"name": "Nestlé S.A.", "price": random.nextDouble() * 1000},
  {"name": "Pfizer Inc.", "price": random.nextDouble() * 1000},
  {"name": "Intel Corporation", "price": random.nextDouble() * 1000},
  {"name": "The Coca-Cola Company", "price": random.nextDouble() * 1000},
  {"name": "Procter & Gamble Company", "price": random.nextDouble() * 1000},
  {"name": "Alphabet Inc. (Class C)", "price": random.nextDouble() * 1000},
  {"name": "Verizon Communications Inc.", "price": random.nextDouble() * 1000},
  {"name": "Shell plc", "price": random.nextDouble() * 1000},
  {"name": "Johnson & Wales University", "price": random.nextDouble() * 1000},
  {"name": "ACME Corporation", "price": random.nextDouble() * 1000},
  {"name": "International Paper Company", "price": random.nextDouble() * 1000},
  {
    "name": "Hilton Worldwide Holdings Inc.",
    "price": random.nextDouble() * 1000
  },
  {"name": "Boeing Company", "price": random.nextDouble() * 1000},
  {"name": "Airbus SE", "price": random.nextDouble() * 1000},
  {"name": "Netflix Inc.", "price": random.nextDouble() * 1000},
  {"name": "The Walt Disney Company", "price": random.nextDouble() * 1000},
  {"name": "PayPal Holdings Inc.", "price": random.nextDouble() * 1000},
  {"name": "Cisco Systems Inc.", "price": random.nextDouble() * 1000},
  {"name": "AstraZeneca plc", "price": random.nextDouble() * 1000},
  {"name": "Reliance Industries", "price": random.nextDouble() * 10000},
  {
    "name": "Tata Consultancy Services (TCS)",
    "price": random.nextDouble() * 10000
  },
  {"name": "HDFC Bank", "price": random.nextDouble() * 10000},
  {"name": "ICICI Bank", "price": random.nextDouble() * 10000},
  {"name": "Infosys", "price": random.nextDouble() * 10000},
  {"name": "Bharti Airtel", "price": random.nextDouble() * 10000},
  {
    "name": "Hindustan Unilever Limited (HUL)",
    "price": random.nextDouble() * 10000
  },
  {"name": "Kotak Mahindra Bank", "price": random.nextDouble() * 10000},
  {"name": "Maruti Suzuki India Limited", "price": random.nextDouble() * 10000},
  {"name": " Bajaj Finance Limited", "price": random.nextDouble() * 10000},
  {"name": "Lloyds Banking Group (UK)", "price": random.nextDouble() * 10000},
  {"name": "BNP Paribas (France)", "price": random.nextDouble() * 10000},
  {
    "name": "Toyota Motor Corporation (Japan)",
    "price": random.nextDouble() * 10000
  },
  {
    "name": "Deutsche Telekom AG (Germany)",
    "price": random.nextDouble() * 10000
  },
];
