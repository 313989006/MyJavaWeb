package bean;

public class bookBean
{
	private String bookName;
	private int bookNum;

	public bookBean()
	{

	}

	public bookBean(String bookname, int booknum)
	{
		this.bookName = bookname;
		this.bookNum = booknum;
	}

	public String getbookName()
	{
		return bookName;
	}

	public void setbookName(String bookName)
	{
		this.bookName = bookName;
	}

	public int getbookNum()
	{
		return bookNum;
	}

	public void setbookNum(int bookNum)
	{
		this.bookNum = bookNum;
	}

}
