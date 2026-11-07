.class public final enum Lcn/sharesdk/framework/utils/QRCodeUtil/a;
.super Ljava/lang/Enum;
.source "BarcodeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/utils/QRCodeUtil/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum b:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum c:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum d:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum e:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum f:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum g:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum h:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum i:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum j:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum k:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum l:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum m:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum n:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum o:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum p:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field public static final enum q:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

.field private static final synthetic r:[Lcn/sharesdk/framework/utils/QRCodeUtil/a;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 11
    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v0, v1

    const-string v2, "AZTEC"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 14
    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v1, v2

    const-string v3, "CODABAR"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 17
    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v2, v3

    const-string v4, "CODE_39"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 20
    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v3, v4

    const-string v5, "CODE_93"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 23
    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v4, v5

    const-string v6, "CODE_128"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 26
    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v5, v6

    const-string v7, "DATA_MATRIX"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 29
    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v6, v7

    const-string v8, "EAN_8"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->g:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 32
    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v7, v8

    const-string v9, "EAN_13"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->h:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 35
    new-instance v9, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v8, v9

    const-string v10, "ITF"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->i:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 38
    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v9, v10

    const-string v11, "MAXICODE"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->j:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 41
    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v10, v11

    const-string v12, "PDF_417"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->k:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 44
    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v11, v12

    const-string v13, "QR_CODE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->l:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 47
    new-instance v13, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v12, v13

    const-string v14, "RSS_14"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->m:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 50
    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v13, v14

    const-string v15, "RSS_EXPANDED"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->n:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 53
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v14, v0

    const-string v15, "UPC_A"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->o:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 56
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object v15, v0

    const-string v1, "UPC_E"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->p:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    .line 59
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object/from16 v16, v0

    const-string v1, "UPC_EAN_EXTENSION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->q:Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    .line 8
    filled-new-array/range {v0 .. v16}, [Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->r:[Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/a;
    .locals 1

    .line 8
    const-class v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/QRCodeUtil/a;
    .locals 1

    .line 8
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/a;->r:[Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/QRCodeUtil/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/QRCodeUtil/a;

    return-object v0
.end method
