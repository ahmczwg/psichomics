genericSampleInfoFormat <- function() {
    list(
        tablename   = "Sample metadata",
        # filename    = NULL,
        description = "Sample metadata for user files",
        dataType    = "Sample metadata",
        
        # Transpose data before parsing? If so, a row in the transposed dataset
        # would be a column in the original
        skip        = 1,     # Rows to skip when parsing file (include header)
        transpose   = FALSE,
        
        # Format checker information
        rowCheck    = TRUE,  # Check a row (TRUE) or a column (FALSE)
        checkIndex  = 1,     # Index of row/column to check the format
        
        # File string to check
        check = "Sample ID",
        
        # Parsing information
        delim       = "\t", # Delimiter used to separate fields
        colNames    = 1,    # Row to use for column names
        rowNames    = 1,    # Column to use for row names
        ignoreCols  = 1,    # Columns to ignore
        ignoreRows  = NULL, # Rows to ignore
        commentChar = NULL, # Ignore lines starting with a given string
        
        # Remove duplicated rows
        unique = FALSE,
        
        # Identity of rows and columns
        rows    = "samples",
        columns = "attributes"
    )
}

attr(genericSampleInfoFormat, "loader") <- "formats"