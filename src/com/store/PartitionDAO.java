package com.store;

import com.model.Partition;

import java.util.List;

public interface PartitionDAO {
    List<Partition> query();
    void add(Partition p);
    void del(String id);
    List<Partition> findByIndex(String index);
    void update(Partition p);
}
