rule HelloWorld
{
    strings:
        // 文字列を定義
        $text_string = "Hello, world!"

    condition:
        $text_string
}

rule HexText
{
    strings:
        // 16 進数形式を文字列
        $hex_string = { 55 48 89 e5 48 83 ec 10 }

    condition:
        $hex_string
}