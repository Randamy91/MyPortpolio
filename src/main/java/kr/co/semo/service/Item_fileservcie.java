package kr.co.semo.service;

import java.util.List;

import kr.co.semo.model.Item_file;

public interface Item_fileservcie {
	public Item_fileservcie getItem_fileItem(Item_fileservcie input) throws Exception;

	public List<Item_fileservcie> getItem_fileList(Item_fileservcie input) throws Exception;

	public int getItem_fileCount(Item_fileservcie input) throws Exception;

	public int addItem_file(Item_fileservcie input) throws Exception;

	public int editItem_file(Item_fileservcie input) throws Exception;

	public int deleteItem_file(Item_fileservcie input) throws Exception;
}
