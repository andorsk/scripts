#!/bin/bash
if [ -z "${1}" ]; then 
    echo "You need to specify the markdown file"
    exit 0
fi
 
# If second argument is undefined then name the output file the same as the input file 
# expect that use a "pdf" file extension
if [ -z "${2}" ]; then 
    # Get the filename (and path) without the extension
    filename_without_ext=`rev <<EOF
< "${1}" | cut -d"." -f2- | rev`
    pdf_filename="${filename_without_ext}.pdf"
else 
pdf_filename="${2}"
fi
 
pandoc -o "${pdf_filename}" "${1}"
EOF