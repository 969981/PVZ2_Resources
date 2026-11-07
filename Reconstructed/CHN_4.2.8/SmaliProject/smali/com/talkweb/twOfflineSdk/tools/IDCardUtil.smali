.class public Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;
.super Ljava/lang/Object;
.source "IDCardUtil.java"


# static fields
.field static final CITY_CODE:[Ljava/lang/String;

.field static final PARITYBIT:[C

.field static final POWER:[I


# direct methods
.method static constructor <clinit>()V
    .locals 35

    const-string v0, "11"

    const-string v1, "12"

    const-string v2, "13"

    const-string v3, "14"

    const-string v4, "15"

    const-string v5, "21"

    const-string v6, "22"

    const-string v7, "23"

    const-string v8, "31"

    const-string v9, "32"

    const-string v10, "33"

    const-string v11, "34"

    const-string v12, "35"

    const-string v13, "36"

    const-string v14, "37"

    const-string v15, "41"

    const-string v16, "42"

    const-string v17, "43"

    const-string v18, "44"

    const-string v19, "45"

    const-string v20, "46"

    const-string v21, "50"

    const-string v22, "51"

    const-string v23, "52"

    const-string v24, "53"

    const-string v25, "54"

    const-string v26, "61"

    const-string v27, "62"

    const-string v28, "63"

    const-string v29, "64"

    const-string v30, "65"

    const-string v31, "71"

    const-string v32, "81"

    const-string v33, "82"

    const-string v34, "91"

    .line 24
    filled-new-array/range {v0 .. v34}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->CITY_CODE:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [C

    .line 29
    fill-array-data v0, :array_0

    sput-object v0, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->PARITYBIT:[C

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_1

    sput-object v0, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->POWER:[I

    return-void

    nop

    :array_0
    .array-data 2
        0x31s
        0x30s
        0x58s
        0x39s
        0x38s
        0x37s
        0x36s
        0x35s
        0x34s
        0x33s
        0x32s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
        0x1
        0x6
        0x3
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final generateID()Ljava/lang/String;
    .locals 9

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->CITY_CODE:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v4, v2}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->rand(II)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x79e

    invoke-static {v2, v1}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->rand(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    .line 172
    invoke-static {v3, v2}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->rand(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "0"

    if-ne v5, v3, :cond_0

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/16 v5, 0x1c

    .line 175
    invoke-static {v3, v5}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->rand(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v3, :cond_1

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const/16 v7, 0x3e7

    .line 179
    invoke-static {v3, v7}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->rand(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 180
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v3, :cond_2

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "00"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_3

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 185
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move v2, v4

    .line 190
    :goto_1
    array-length v3, v1

    if-ge v4, v3, :cond_4

    .line 192
    aget-char v3, v1, v4

    add-int/lit8 v3, v3, -0x30

    sget-object v5, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->POWER:[I

    aget v5, v5, v4

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 197
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->PARITYBIT:[C

    rem-int/lit8 v2, v2, 0xb

    aget-char v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final id15To18(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "19"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v2, v1

    .line 142
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 144
    aget-char v3, v0, v1

    add-int/lit8 v3, v3, -0x30

    sget-object v4, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->POWER:[I

    aget v4, v4, v1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->PARITYBIT:[C

    rem-int/lit8 v2, v2, 0xb

    aget-char p0, p0, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static final isValid(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "\u8eab\u4efd\u8bc1\uff1aid=null"

    .line 47
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "isValid\uff1alen != 15 && len != 18"

    const/16 v3, 0xf

    if-eq v1, v3, :cond_1

    const/16 v4, 0x12

    if-eq v1, v4, :cond_1

    .line 54
    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v4, 0x2

    .line 58
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->validCityCode(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 59
    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return v0

    .line 63
    :cond_2
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->validDate(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    if-ne v1, v3, :cond_4

    const/4 p0, 0x1

    return p0

    .line 70
    :cond_4
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->validParityBit(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static rand(II)I
    .locals 2

    .line 161
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    add-int/lit8 v1, p1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method private static validCityCode(Ljava/lang/String;)Z
    .locals 5

    .line 116
    sget-object v0, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->CITY_CODE:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 118
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static validDate(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    const/4 v3, 0x6

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "19"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 102
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private static validParityBit(Ljava/lang/String;)Z
    .locals 7

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 78
    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v1, v3, :cond_4

    .line 81
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_0

    aget-char v3, p0, v1

    const/16 v5, 0x58

    if-ne v3, v5, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    aget-char v3, p0, v1

    const/16 v5, 0x30

    if-lt v3, v5, :cond_3

    aget-char v3, p0, v1

    const/16 v6, 0x39

    if-le v3, v6, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_2

    .line 91
    aget-char v3, p0, v1

    sub-int/2addr v3, v5

    sget-object v4, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->POWER:[I

    aget v4, v4, v1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    .line 94
    :cond_4
    :goto_2
    sget-object v1, Lcom/talkweb/twOfflineSdk/tools/IDCardUtil;->PARITYBIT:[C

    rem-int/lit8 v2, v2, 0xb

    aget-char v1, v1, v2

    array-length v2, p0

    sub-int/2addr v2, v4

    aget-char p0, p0, v2

    if-ne v1, p0, :cond_5

    move v0, v4

    :cond_5
    return v0
.end method

.method public static verifyName(Ljava/lang/String;)Z
    .locals 3

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyName str:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " str.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "\u00b7"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "\u2022"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "^[\\u4e00-\\u9fa5]+$"

    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string v0, "^[\\u4e00-\\u9fa5]+[\u00b7\u2022][\\u4e00-\\u9fa5]+$"

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method
