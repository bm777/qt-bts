function fill() {

        var db = LocalStorage.openDatabaseSync("homomorph", "", "Homomorph encryption", 1000000);
        var result = "";
        var list = [];
        try {
            db.transaction(function (tx) {
                result = tx.executeSql('SELECT id, moment, date FROM moments');
                for (var i = 0; i < result.rows.length; i++) {
                    list.push([result.rows.item(i).id, result.rows.item(i).moment, result.rows.item(i).date])
                   }
            })
        } catch (err) {
            console.log("Error while updating table in database: " + err)
        };
        return list;

}
