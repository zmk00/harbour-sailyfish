import QtQuick 2.0
import QtQuick.LocalStorage 2.0 as Sql

Item{

    function getDatabase(){

        return Sql.LocalStorage.openDatabaseSync("Sailyfish", "1.0", "StorageDatabase", 3000)
    }

    function initalize(){

        var db = getDatabase()

        db.transaction(

            function(tx){

                var rs = tx.executeSql('CREATE TABLE IF NOT EXISTS settings(setting TEXT UNIQUE, value INT)')
            }
        )
    }

    function setSetting(set, val){

        var db  = getDatabase()

        db.transaction(

            function(tx){

                tx.executeSql('INSERT OR REPLACE INTO settings VALUES (?,?);', [set,val])
           }
        );
    }

    function getSetting(set){

        var db  = getDatabase()
        var res = ""

        db.transaction(

            function(tx){

                var rs = tx.executeSql('SELECT value FROM settings WHERE setting=?;', [set])

                for (var i=0; i < rs.rows.length; i++){

                    var dbItem = rs.rows.item(i)
                    res = dbItem.value
                }
            }
        )

        return res
    }
}
