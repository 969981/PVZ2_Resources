.class public final enum Lcn/sharesdk/framework/utils/QRCodeUtil/e;
.super Ljava/lang/Enum;
.source "EncodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/utils/QRCodeUtil/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum b:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum c:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum d:Lcn/sharesdk/framework/utils/QRCodeUtil/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum e:Lcn/sharesdk/framework/utils/QRCodeUtil/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum f:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum g:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum h:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum i:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum j:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum k:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field public static final enum l:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

.field private static final synthetic m:[Lcn/sharesdk/framework/utils/QRCodeUtil/e;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 20
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v1, "ERROR_CORRECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 25
    new-instance v1, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v2, "CHARACTER_SET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 30
    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v3, "DATA_MATRIX_SHAPE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 38
    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v4, "MIN_SIZE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 46
    new-instance v4, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v5, "MAX_SIZE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 54
    new-instance v5, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v6, "MARGIN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 60
    new-instance v6, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v7, "PDF417_COMPACT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->g:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 67
    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v8, "PDF417_COMPACTION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->h:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 73
    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v9, "PDF417_DIMENSIONS"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->i:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 82
    new-instance v9, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v10, "AZTEC_LAYERS"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->j:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 88
    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v11, "QR_VERSION"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->k:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 94
    new-instance v11, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    const-string v12, "GS1_FORMAT"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/e;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->l:Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    .line 9
    filled-new-array/range {v0 .. v11}, [Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->m:[Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/e;
    .locals 1

    .line 9
    const-class v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/QRCodeUtil/e;
    .locals 1

    .line 9
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/e;->m:[Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/QRCodeUtil/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/QRCodeUtil/e;

    return-object v0
.end method
