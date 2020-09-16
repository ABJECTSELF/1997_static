///array_args(*args);
//An easy way to create arrays on a single line.
function array_args(){
	var item;
	for (var i=0;i<argument_count;i++)
	{
		item[i] = argument[i];
	}
	return item;
}