package kr.co.semo.service;

import java.util.List;

import kr.co.semo.model.Item_file;

public interface Item_fileServcie {
	public Item_fileServcie getItem_fileItem(Item_fileServcie input) throws Exception;

	public List<Item_fileServcie> getItem_fileList(Item_fileServcie input) throws Exception;

	public int getItem_fileCount(Item_fileServcie input) throws Exception;

	public int addItem_file(Item_fileServcie input) throws Exception;

	public int editItem_file(Item_fileServcie input) throws Exception;

	public int deleteItem_file(Item_fileServcie input) throws Exception;
}
