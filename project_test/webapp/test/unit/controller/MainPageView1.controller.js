/*global QUnit*/

sap.ui.define([
	"project_test/controller/MainPageView1.controller"
], function (Controller) {
	"use strict";

	QUnit.module("MainPageView1 Controller");

	QUnit.test("I should test the MainPageView1 controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
