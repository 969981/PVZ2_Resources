.class public Lcom/tw/pay/sdk/tool/PasswordValidator;
.super Ljava/lang/Object;
.source "PasswordValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsDigit(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]"

    .line 94
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static containsLowerCase(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[a-z]"

    .line 87
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static containsSpecialChar(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[~!@#$%^&*()_+`\\-={}\\[\\]|\\\\:;\"\'<>,.?/]"

    .line 104
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static containsUpperCase(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[A-Z]"

    .line 80
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static findRepeatedChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 192
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 193
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v2, v4, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "\'"

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v3

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasConsecutiveOrRepeatedChars(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v2, v4, :cond_0

    return v3

    :cond_1
    return v0
.end method

.method public static isValidPassword(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ".*[A-Z].*"

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v3, ".*[a-z].*"

    .line 16
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    const-string v3, ".*[0-9].*"

    .line 17
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    const-string v3, ".*[^A-Za-z0-9].*"

    .line 18
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    const/4 p0, 0x3

    if-ge v1, p0, :cond_5

    return v0

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10

    const-string v0, "Abc12345!"

    const-string v1, "ABCdef123"

    const-string v2, "12345678"

    const-string v3, "Abcdefgh"

    const-string v4, "Abc123!!"

    const-string v5, "Aa123456"

    const-string v6, "Password11"

    const-string v7, "Test@123"

    const-string v8, "A1!b2@c3#"

    const-string v9, "A!b3c4d5"

    .line 208
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p0

    .line 221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5bc6\u7801\u9a8c\u8bc1\u6d4b\u8bd5\u7ed3\u679c\uff1a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "================================="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "; "

    const/16 v4, 0xa

    if-ge v2, v4, :cond_2

    .line 224
    aget-object v4, p0, v2

    .line 225
    invoke-static {v4}, Lcom/tw/pay/sdk/tool/PasswordValidator;->validatePassword(Ljava/lang/String;)Z

    move-result v5

    .line 226
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v0

    if-eqz v5, :cond_0

    const-string v8, "\u901a\u8fc7"

    goto :goto_1

    :cond_0
    const-string v8, "\u5931\u8d25"

    :goto_1
    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "\u5bc6\u7801: %-20s \u9a8c\u8bc1\u7ed3\u679c: %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v5, :cond_1

    .line 231
    invoke-static {v4}, Lcom/tw/pay/sdk/tool/PasswordValidator;->validatePasswordDetailed(Ljava/lang/String;)Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;

    move-result-object v4

    .line 232
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  \u8be6\u7ec6\u9519\u8bef: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->getMessages()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, L$r8$backportedMethods$utility$String$2$joinIterable;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "\n\u8be6\u7ec6\u9a8c\u8bc1\u6d4b\u8bd5\uff1a"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p0, "Test123@"

    .line 240
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->validatePasswordDetailed(Ljava/lang/String;)Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;

    move-result-object v0

    .line 241
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5bc6\u7801: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u6709\u6548: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->isValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5305\u542b\u7684\u5b57\u7b26\u7c7b\u578b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->getCharacterTypes()Ljava/util/Set;

    move-result-object v2

    const-string v4, ", "

    invoke-static {v4, v2}, L$r8$backportedMethods$utility$String$2$joinIterable;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6d88\u606f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->getMessages()Ljava/util/Set;

    move-result-object v0

    invoke-static {v3, v0}, L$r8$backportedMethods$utility$String$2$joinIterable;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static validatePassword(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->containsUpperCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->containsLowerCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 52
    :cond_2
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->containsDigit(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 57
    :cond_3
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->containsSpecialChar(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    const/4 v3, 0x3

    if-ge v1, v3, :cond_5

    .line 62
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5bc6\u7801\u5fc5\u987b\u5305\u542b\u5927\u5199\u5b57\u6bcd\u3001\u5c0f\u5199\u5b57\u6bcd\u3001\u6570\u5b57\u3001\u7279\u6b8a\u7b26\u53f7\u4e2d\u81f3\u5c113\u79cd"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    .line 67
    :cond_5
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->hasConsecutiveOrRepeatedChars(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 68
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5bc6\u7801\u4e0d\u5141\u8bb8\u5305\u542b\u8fde\u7eed\u6216\u91cd\u590d\u7684\u5b57\u7b26"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    :cond_6
    return v2

    .line 34
    :cond_7
    :goto_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5bc6\u7801\u957f\u5ea6\u5fc5\u987b\u57288\u523020\u4f4d\u4e4b\u95f4"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public static validatePasswordDetailed(Ljava/lang/String;)Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;
    .locals 6

    .line 126
    new-instance v0, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;

    invoke-direct {v0}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 130
    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->setValid(Z)V

    const-string p0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    .line 131
    invoke-virtual {v0, p0}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->addMessage(Ljava/lang/String;)V

    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 136
    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->setValid(Z)V

    const-string v2, "\u5bc6\u7801\u957f\u5ea6\u4e0d\u8db38\u4f4d"

    .line 137
    invoke-virtual {v0, v2}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->addMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_2

    .line 139
    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->setValid(Z)V

    const-string v2, "\u5bc6\u7801\u957f\u5ea6\u8d85\u8fc720\u4f4d"

    .line 140
    invoke-virtual {v0, v2}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->addMessage(Ljava/lang/String;)V

    .line 144
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->containsUpperCase(Ljava/lang/String;)Z

    move-result v2

    .line 145
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->containsLowerCase(Ljava/lang/String;)Z

    move-result v3

    .line 146
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->containsDigit(Ljava/lang/String;)Z

    move-result v4

    .line 147
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->containsSpecialChar(Ljava/lang/String;)Z

    move-result v5

    if-eqz v2, :cond_3

    const-string v2, "\u5927\u5199\u5b57\u6bcd"

    .line 152
    invoke-virtual {v0, v2}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->addCharacterType(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    const-string v3, "\u5c0f\u5199\u5b57\u6bcd"

    .line 156
    invoke-virtual {v0, v3}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->addCharacterType(Ljava/lang/String;)V

    :cond_4
    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    const-string v3, "\u6570\u5b57"

    .line 160
    invoke-virtual {v0, v3}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->addCharacterType(Ljava/lang/String;)V

    :cond_5
    if-eqz v5, :cond_6

    add-int/lit8 v2, v2, 0x1

    const-string v3, "\u7279\u6b8a\u7b26\u53f7"

    .line 164
    invoke-virtual {v0, v3}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->addCharacterType(Ljava/lang/String;)V

    :cond_6
    const/4 v3, 0x3

    if-ge v2, v3, :cond_7

    .line 168
    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->setValid(Z)V

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5bc6\u7801\u5fc5\u987b\u5305\u542b\u81f3\u5c113\u79cd\u5b57\u7b26\u7c7b\u578b\uff08\u5f53\u524d\u5305\u542b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u79cd\uff09"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->addMessage(Ljava/lang/String;)V

    .line 173
    :cond_7
    invoke-static {p0}, Lcom/tw/pay/sdk/tool/PasswordValidator;->findRepeatedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 175
    invoke-virtual {v0, v1}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->setValid(Z)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u73b0\u8fde\u7eed\u6216\u91cd\u590d\u7684\u5b57\u7b26: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->addMessage(Ljava/lang/String;)V

    .line 180
    :cond_8
    invoke-virtual {v0}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->isValid()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "\u5bc6\u7801\u9a8c\u8bc1\u901a\u8fc7"

    .line 181
    invoke-virtual {v0, p0}, Lcom/tw/pay/sdk/tool/PasswordValidator$ValidationResult;->addMessage(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method
