import 'package:flutter/material.dart';
import 'package:retirement_plan/widgets/choose_page.dart';

final List<String> topic = ["GOLD", "Mutual Funds", "Equity", "Stocks"];

final List<String> para = [gold, mutual, equity, stock];



class BlogPage extends StatefulWidget {

  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(topic[x]),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/b4.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                height: data.size.height * .25,
                width: data.size.height * .6,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 100.0,16.0,16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0)
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10.0),

                    Text(para[x]),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


String stock = "Understanding the stock market is essential to making informed trading decisions. You need to know how to choose the right stocks, which requires an in-depth understanding of a company’s annual report and financial statements. Learn how to understand what stock represents in a company and how to determine the true value of any stock. The workings of the stock market can be confusing. Some people believe investing is a form of gambling and feel that, if you invest, you will likely end up losing your money.These fears can stem from the personal experiences of family members and friends who suffered similar fates or lived through the Great Depression. These feelings are understandable but aren't grounded in facts. Someone who believes in this line of thinking may not have an in-depth understanding of the stock market, why it exists, and how it works." ;
String gold = "People in this world can be divided broadly into two categories, one includes the people who settle with whatever they have and the remaining are the people who don’t settle but fulfil their dreams and needs one way or the other. The approach for the latter group can be described by the statement that it is either my way or the high way and this is a great optimal attitude as it keeps one motivated to work and achieve all the goals and be able to buy all the luxuries of life. Well, a majority of Indian population lives on a fixed income and couple that with the fixed monthly expenditure, there is always almost a fixed amount of savings left which is really not enough to buy the luxuries and live life to the fullest. Therefore, one of the tools which are popular for this purpose is the financial investment which allows a person to multiply his savings by investing it into one of the multiple options available like mutual funds, real estate, gold etc. Now, speaking of gold, it is easily the oldest form of currency in use on earth. It was used by our ancestors centuries ago and is still used today, its mention can even be found in the epics of Hindu mythology which highlights the position that gold holds in the Indian and especially Hindu culture. It is considered as a carrier of good luck and thus is gifted to the new brides and other important milestones of life as well.";
String mutual = "A mutual fund is an investment vehicle that pools money from a multitude of people (investors like you and me). It uses this pool to purchase securities like stocks, bonds, and gold. As the prices of securities change, the mutual fund scheme makes its returns which is in turn the investor’s return. Professional money managers with decades of experience manage each mutual fund and take the call on which securities to buy and sell. The mutual fund is managed in a manner consistent with its stated objectives. A mutual fund invests in a basket of securities. As the prices of these securities change (for stocks and some bonds) or as a fund earns the interest on the bonds it holds, its value changes. Gain in stock/bond prices sends value higher and vice versa. So as the fund value moves up, your investment value also rises. When you sell your fund – In this case, you earn capital gain. Capital gain is the profit on your investment when you sell your mutual fund units. It is the difference between the market value of your mutual fund units at the time of sale and the cost of such units. The gains come in from the appreciation in your fund’s value. If the selling value is lower than your investment cost, you’ve made a capital loss. When you earn dividends on your fund – This happens when a mutual fund declares dividend out of the accumulated profits it has made. This accumulated profit can be in the form of securities sold for profit, interest earned on bonds, or dividends earned on stocks.";
String equity = "Equity fund investments are investments which are made in stocks or equity, representing ownership equity or share in ​​​​companies. Equity Funds​ are used to diversify the portfolio of a mutual fund. Moreover, equity funds have certain benefits that no other funds have, these are:​​Diversified Portfolio: Equity funds have widespread diversification, with very small initial investment. This means buying stocks of different companies at different times in different economic sectors. This is helpful in ways that if a stock drops at the exchange the other stocks can make up for the loss.Capital Appreciation: This is one of the primary benefits of equity fund investments. As a company grows & earns profit, it usually chooses to reinvest the profit to grow through increasing market share, product developments, etc. With the increasing growth of the company, the market price of the stock increases, leading to capital appreciation for the investors.Dividend: Investing in blue chip companies, usually gives the investors a steam of regular income in the form of dividends. These companies usually pay out regular dividends in good & bad economic times, typically paid quarterly. Having a diversified portfolio will ensure a steady stream of income throughout the year. Different companies have different cycles, so investors are guaranteed a pay cheque every month.Liquidity: Stocks are traded in all major exchanges in the world, every day. This makes them a highly liquid investment. This means that an investor can sell their stocks whenever they want to. Stocks are not as liquid as your savings in your bank account, but they are a close second, much more than real estate. An investor can usually get their money from a stock sale within a week.No brokerage or commissions: usually fund houses charge bank fees, commission, brokerage etc., for their services which eventually reduces the profit earned by an investor. The more you pay, the less you get. One of the major benefits of equity funds is that, very often, an investor can avoid brokerage fees altogether. Over a long period of time, this becomes a major plus of investing in these types of mutual funds.​​Professional management: Investments are always surrounded by a degree of uncertainty. An investor is scared of investing due to lack of adequate knowledge & time, self-discipline, or investing experience. Mutual Funds​​ fit in perfectly in this situation as they have an inherent design to tap professional expertise to manage investments which, in turn, relive the stress of the investor.";