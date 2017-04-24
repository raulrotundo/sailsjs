/**
 * Employee.js
 *
 * @description :: Employee model
 */

module.exports = {
    attributes: {
        name: {
            type: "string",
            required: true,
            minLength: 2
        },
        email: {
            type: "email",
            required: true,
            unique: true
        }
    }
};