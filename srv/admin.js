module.exports = (srv) => {
    const { data }= srv.entities;

    srv.on('acceptExpense', async req => {
        data.status = "Approved";
        console.log("Action Succesful");
    });

    srv.on('denyExpense', Things, async req => {
        data.status = "Denied";
        console.log("Action Succesful");
    });
}