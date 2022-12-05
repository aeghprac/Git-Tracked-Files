# SQL Notes

# Indexes
- B tree, etc.
- Primary keys create a clustered index
- Secondary indexes can be created on commonly searched items to make it easier to find them and avoid table scans
- Heaps are tables with no indexing
- Indexes decrease query time but increase editing time
- Columnstore indexes store the individual columns as tables (?)
  - significantly reduce query time
  - Most tables are rowstore, but most queries only require certain columns from any given table