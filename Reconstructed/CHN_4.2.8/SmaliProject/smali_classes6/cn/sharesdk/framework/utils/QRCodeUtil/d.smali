.class public final enum Lcn/sharesdk/framework/utils/QRCodeUtil/d;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/utils/QRCodeUtil/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field private static final B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/sharesdk/framework/utils/QRCodeUtil/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic F:[Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum a:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum b:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum c:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum d:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum e:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum f:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum g:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum h:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum i:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum j:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum k:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum l:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum m:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum n:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum o:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum p:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum q:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum r:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum s:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum t:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum u:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum v:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum w:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum x:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum y:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

.field public static final enum z:Lcn/sharesdk/framework/utils/QRCodeUtil/d;


# instance fields
.field private final D:[I

.field private final E:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 10
    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v0, v1

    const/4 v15, 0x0

    const/4 v14, 0x2

    filled-new-array {v15, v14}, [I

    move-result-object v2

    new-array v3, v15, [Ljava/lang/String;

    const-string v4, "Cp437"

    invoke-direct {v1, v4, v15, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 11
    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v1, v2

    const/4 v13, 0x1

    const/4 v12, 0x3

    filled-new-array {v13, v12}, [I

    move-result-object v3

    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    aput-object v5, v4, v15

    const-string v5, "ISO8859_1"

    invoke-direct {v2, v5, v13, v3, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 12
    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v2, v3

    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "ISO-8859-2"

    aput-object v5, v4, v15

    const-string v5, "ISO8859_2"

    const/4 v6, 0x4

    invoke-direct {v3, v5, v14, v6, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 13
    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v3, v4

    new-array v5, v13, [Ljava/lang/String;

    const-string v7, "ISO-8859-3"

    aput-object v7, v5, v15

    const-string v7, "ISO8859_3"

    const/4 v8, 0x5

    invoke-direct {v4, v7, v12, v8, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v4, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 14
    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v4, v5

    new-array v7, v13, [Ljava/lang/String;

    const-string v9, "ISO-8859-4"

    aput-object v9, v7, v15

    const-string v9, "ISO8859_4"

    const/4 v10, 0x6

    invoke-direct {v5, v9, v6, v10, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v5, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 15
    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v5, v6

    new-array v7, v13, [Ljava/lang/String;

    const-string v9, "ISO-8859-5"

    aput-object v9, v7, v15

    const-string v9, "ISO8859_5"

    const/4 v11, 0x7

    invoke-direct {v6, v9, v8, v11, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v6, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 16
    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v6, v7

    new-array v8, v13, [Ljava/lang/String;

    const-string v9, "ISO-8859-6"

    aput-object v9, v8, v15

    const-string v9, "ISO8859_6"

    const/16 v12, 0x8

    invoke-direct {v7, v9, v10, v12, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v7, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->g:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 17
    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v7, v8

    new-array v9, v13, [Ljava/lang/String;

    const-string v10, "ISO-8859-7"

    aput-object v10, v9, v15

    const-string v10, "ISO8859_7"

    const/16 v14, 0x9

    invoke-direct {v8, v10, v11, v14, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v8, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->h:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 18
    new-instance v9, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v8, v9

    new-array v10, v13, [Ljava/lang/String;

    const-string v11, "ISO-8859-8"

    aput-object v11, v10, v15

    const-string v11, "ISO8859_8"

    const/16 v14, 0xa

    invoke-direct {v9, v11, v12, v14, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v9, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->i:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 19
    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v9, v10

    new-array v11, v13, [Ljava/lang/String;

    const-string v12, "ISO-8859-9"

    aput-object v12, v11, v15

    const-string v12, "ISO8859_9"

    const/16 v14, 0xb

    const/16 v15, 0x9

    invoke-direct {v10, v12, v15, v14, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v10, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->j:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 20
    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v10, v11

    new-array v12, v13, [Ljava/lang/String;

    const-string v15, "ISO-8859-10"

    const/16 v18, 0x0

    aput-object v15, v12, v18

    const-string v15, "ISO8859_10"

    const/16 v14, 0xc

    const/16 v13, 0xa

    invoke-direct {v11, v15, v13, v14, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v11, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->k:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 21
    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object v11, v12

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/String;

    const-string v19, "ISO-8859-11"

    aput-object v19, v15, v18

    const-string v14, "ISO8859_11"

    const/16 v13, 0xd

    move-object/from16 v27, v0

    const/16 v0, 0xb

    invoke-direct {v12, v14, v0, v13, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v12, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->l:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 22
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    const/4 v15, 0x3

    move-object v12, v0

    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/String;

    const-string v20, "ISO-8859-13"

    aput-object v20, v13, v18

    const-string v14, "ISO8859_13"

    move-object/from16 v28, v1

    const/16 v1, 0xf

    const/16 v15, 0xc

    invoke-direct {v0, v14, v15, v1, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->m:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 23
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    const/16 v14, 0xd

    const/4 v15, 0x1

    move-object v13, v0

    new-array v1, v15, [Ljava/lang/String;

    const-string v19, "ISO-8859-14"

    aput-object v19, v1, v18

    const-string v15, "ISO8859_14"

    move-object/from16 v29, v2

    const/16 v2, 0x10

    invoke-direct {v0, v15, v14, v2, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->n:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 24
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    const/4 v1, 0x2

    move-object v14, v0

    const/4 v15, 0x1

    new-array v1, v15, [Ljava/lang/String;

    const-string v17, "ISO-8859-15"

    aput-object v17, v1, v18

    const-string v15, "ISO8859_15"

    const/16 v2, 0xe

    move-object/from16 v30, v3

    const/16 v3, 0x11

    invoke-direct {v0, v15, v2, v3, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->o:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 25
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move/from16 v31, v18

    const/4 v1, 0x1

    const/4 v2, 0x3

    move-object v15, v0

    new-array v2, v1, [Ljava/lang/String;

    const-string v18, "ISO-8859-16"

    aput-object v18, v2, v31

    const-string v3, "ISO8859_16"

    const/16 v1, 0x12

    move-object/from16 v32, v4

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->p:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 26
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v16, v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "Shift_JIS"

    aput-object v4, v3, v31

    const-string v4, "SJIS"

    const/16 v1, 0x14

    const/16 v2, 0x10

    invoke-direct {v0, v4, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->q:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 27
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v17, v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "windows-1250"

    aput-object v4, v3, v31

    const-string v4, "Cp1250"

    const/16 v1, 0x15

    const/16 v2, 0x11

    invoke-direct {v0, v4, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->r:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 28
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v18, v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "windows-1251"

    aput-object v4, v3, v31

    const-string v4, "Cp1251"

    const/16 v1, 0x16

    const/16 v2, 0x12

    invoke-direct {v0, v4, v2, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->s:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 29
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v19, v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "windows-1252"

    aput-object v4, v3, v31

    const-string v4, "Cp1252"

    const/16 v1, 0x13

    const/16 v2, 0x17

    invoke-direct {v0, v4, v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->t:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 30
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v20, v0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "windows-1256"

    aput-object v1, v3, v31

    const-string v1, "Cp1256"

    const/16 v4, 0x18

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v4, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->u:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 31
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v21, v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "UTF-16BE"

    aput-object v1, v2, v31

    const-string v1, "UnicodeBig"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "UnicodeBigUnmarked"

    const/16 v4, 0x19

    const/16 v3, 0x15

    invoke-direct {v0, v1, v3, v4, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->v:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 32
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v22, v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "UTF-8"

    aput-object v1, v2, v31

    const-string v1, "UTF8"

    const/16 v3, 0x1a

    const/16 v4, 0x16

    invoke-direct {v0, v1, v4, v3, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->w:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 33
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v23, v0

    const/16 v1, 0x1b

    const/16 v2, 0xaa

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "US-ASCII"

    aput-object v2, v3, v31

    const-string v2, "ASCII"

    const/16 v4, 0x17

    invoke-direct {v0, v2, v4, v1, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->x:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 34
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const/16 v2, 0x1c

    const-string v3, "Big5"

    invoke-direct {v0, v3, v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->y:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 35
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v25, v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GB2312"

    aput-object v2, v1, v31

    const-string v2, "EUC_CN"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "GBK"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "GB18030"

    const/16 v4, 0x19

    const/16 v3, 0x1d

    invoke-direct {v0, v2, v4, v3, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->z:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 36
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v26, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "EUC-KR"

    aput-object v2, v1, v31

    const-string v2, "EUC_KR"

    const/16 v3, 0x1a

    const/16 v4, 0x1e

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->A:Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v32

    .line 7
    filled-new-array/range {v0 .. v26}, [Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->F:[Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->B:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->C:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->values()[Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v31

    :goto_0
    if-ge v15, v1, :cond_2

    aget-object v2, v0, v15

    .line 42
    iget-object v3, v2, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->D:[I

    array-length v4, v3

    move/from16 v5, v31

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, v3, v5

    .line 43
    sget-object v7, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->B:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 45
    :cond_0
    sget-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->C:Ljava/util/Map;

    invoke-virtual {v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v3, v2, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->E:[Ljava/lang/String;

    array-length v4, v3

    move/from16 v5, v31

    :goto_2
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 47
    sget-object v7, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->C:Ljava/util/Map;

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 56
    filled-new-array {p3}, [I

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->D:[I

    .line 61
    iput-object p4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->E:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-object p3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->D:[I

    .line 66
    iput-object p4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->E:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/d;
    .locals 1

    .line 92
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->C:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/d;
    .locals 1

    .line 7
    const-class v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/QRCodeUtil/d;
    .locals 1

    .line 7
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->F:[Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/QRCodeUtil/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/QRCodeUtil/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 70
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/d;->D:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
