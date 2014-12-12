import QtQuick 2.0
import QtQuick.Controls 1.2

CheckBox {
  signal valueChanged( variant value )

  checked: value == config['checkedState']

  onCheckedChanged: {
    valueChanged( checked ? config['checkedState'] : config['uncheckedState'] )
  }
}

