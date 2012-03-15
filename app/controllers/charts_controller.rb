class ChartsController < ApplicationController
  
  
  def columnchart
    data_table = GoogleVisualr::DataTable.new

    data_table.new_column('string', 'Year' )
    data_table.new_column('number', 'Sales')
    data_table.new_column('number', 'Expenses')

    # Add Rows and Values
    data_table.add_rows([
      ['2004', 1000, 400],
      ['2005', 117, 460],
      ['2006', 660, 1120],
      ['2007', 103, 540]
      ])
    option = { width: 400, height: 240, title: 'Company Performance' }
    @chart = GoogleVisualr::Interactive::ColumnChart.new(data_table, option)

  end


  def index
  end

  def geochart
    data_table = GoogleVisualr::DataTable.new
  data_table.new_column('string', 'Country')
  data_table.new_column('number', 'Popularity')
  data_table.add_rows(6)
  data_table.set_cell(0, 0, 'Germany')
  data_table.set_cell(0, 1, 200)
  data_table.set_cell(1, 0, 'india')
  data_table.set_cell(1, 1, 300)
  data_table.set_cell(2, 0, 'Brazil')
  data_table.set_cell(2, 1, 400)
  data_table.set_cell(3, 0, 'Canada')
  data_table.set_cell(3, 1, 500)
  data_table.set_cell(4, 0, 'France')
  data_table.set_cell(4, 1, 600)
  data_table.set_cell(5, 0, 'USA')
  data_table.set_cell(5, 1, 700)

  opts = { :width => 500, :height => 300 }
  @chart = GoogleVisualr::Interactive::GeoChart.new(data_table, opts)


  end
  
  def motionchart

  data_table = GoogleVisualr::DataTable.new
  data_table.new_column('string', 'Fruit' )
  data_table.new_column('date' , 'Date' )
  data_table.new_column('number', 'Sales' )
  data_table.new_column('number', 'Expenses')
  data_table.new_column('string', 'Location')
  data_table.add_rows([
    ['Apples' ,Date.parse("1988-01-01"),1000,300,'East'],
    ['Oranges',Date.parse("1988-01-01"),1150,200,'West'],
    ['Bananas',Date.parse("1988-01-01"),300 ,250,'West'],
    ['Apples' ,Date.parse("1989-07-01"),1200,400,'East'],
    ['Oranges',Date.parse("1989-07-01"),750 ,150,'West'],
    ['Bananas',Date.parse("1989-07-01"),788 ,617,'West']
  ])

  opts = { :width => 600, :height => 300 }
  @chart = GoogleVisualr::Interactive::MotionChart.new(data_table, opts)

end

  def orgchart

  data_table = GoogleVisualr::DataTable.new
  data_table.new_column('string', 'Name' )
  data_table.new_column('string', 'Manager')
  data_table.new_column('string', 'ToolTip')
  data_table.add_rows( [
    [ {:v => 'Mike', :f => 'Mike<div style="color:red; font-style:italic">President</div>' }, '' , 'The President' ],
    [ {:v => 'Jim' , :f => 'Jim<div style="color:red; font-style:italic">Vice President<div>'}, 'Mike', 'VP' ],
    [ 'Alice' , 'Mike', '' ],
    [ 'Bob' , 'Jim' , 'Bob Sponge' ],
    [ 'Carol' , 'Bob' , '' ]
  ] )

  opts = { :allowHtml => true }
  @chart = GoogleVisualr::Interactive::OrgChart.new(data_table, opts)

end

end
