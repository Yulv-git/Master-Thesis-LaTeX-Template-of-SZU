###
# @Author: Shuangchi He / Yulv
# @Email: yulvchi@qq.com
# @Date: 2022-02-13 15:36:15
# @Motto: Entities should not be multiplied unnecessarily.
 # @LastEditors: Shuangchi He
 # @LastEditTime: 2022-04-01 23:07:16
 # @FilePath: \Master-Thesis-Template-of-SZU\wordcount.sh
# @Description: 使用latex自带的texcount程序来统计文章字符数。
###

excludeFile=("Acknowledgements.tex" "Appendix.tex" "Abstract.tex" "Publications.tex")  # 统计正文时
# excludeFile=("Publications.tex")  # 统计全文时

# 遍历./Tex中的.tex文件
totalStr=" "
for file in ./Tex/*; do
    if [[ "${file##*.}" == "tex" ]]; then
        flag=0

        # 排除excludeFile中的文件
        for excfile in ${excludeFile[@]}; do
            if [[ $file == "./Tex/${excfile}" ]]; then
                flag=1
                break
            fi
        done

        if [[ $flag == 0 ]]; then
            totalStr="${totalStr} ${file}"
        fi
    fi
done

# 使用texcount统计分别这些文件中的字符，并计算总字符
texcount $totalStr

read -s -n1 -p "Press any key to continue ..."
echo ""
