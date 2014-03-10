Ext.define('AW.model.Book', {
	extend	: 'Ext.data.Model',
	fields	: [
		{name: 'id',		type: 'int'},
		{name: 'title',		type: 'string'},
		{name: 'writer',	type: 'string'},
		{name: 'copies',	type: 'int'}, 
		{name: 'pages', 	type: 'int'}
	]
});