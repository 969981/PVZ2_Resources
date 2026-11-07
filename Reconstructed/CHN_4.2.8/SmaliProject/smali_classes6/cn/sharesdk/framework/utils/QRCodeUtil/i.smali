.class public final enum Lcn/sharesdk/framework/utils/QRCodeUtil/i;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/utils/QRCodeUtil/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum b:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum c:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum d:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum e:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum f:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum g:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum h:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum i:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field public static final enum j:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

.field private static final synthetic m:[Lcn/sharesdk/framework/utils/QRCodeUtil/i;


# instance fields
.field private final k:[I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const/4 v1, 0x0

    filled-new-array {v1, v1, v1}, [I

    move-result-object v2

    const-string v3, "TERMINATOR"

    invoke-direct {v0, v3, v1, v2, v1}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->a:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 11
    new-instance v2, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const/16 v3, 0xe

    const/16 v4, 0xa

    const/16 v5, 0xc

    filled-new-array {v4, v5, v3}, [I

    move-result-object v3

    const-string v6, "NUMERIC"

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7, v3, v7}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v2, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->b:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 12
    new-instance v3, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const/16 v6, 0x9

    const/16 v7, 0xb

    const/16 v8, 0xd

    filled-new-array {v6, v7, v8}, [I

    move-result-object v7

    const-string v9, "ALPHANUMERIC"

    const/4 v10, 0x2

    invoke-direct {v3, v9, v10, v7, v10}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v3, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->c:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 13
    new-instance v7, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const/4 v9, 0x3

    filled-new-array {v1, v1, v1}, [I

    move-result-object v10

    const-string v11, "STRUCTURED_APPEND"

    invoke-direct {v7, v11, v9, v10, v9}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v7, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->d:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 14
    new-instance v9, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const/16 v10, 0x10

    const/16 v11, 0x8

    filled-new-array {v11, v10, v10}, [I

    move-result-object v10

    const-string v12, "BYTE"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v10, v13}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v9, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->e:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 15
    new-instance v10, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    filled-new-array {v1, v1, v1}, [I

    move-result-object v12

    const-string v13, "ECI"

    const/4 v14, 0x5

    const/4 v15, 0x7

    invoke-direct {v10, v13, v14, v12, v15}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v10, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->f:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 16
    new-instance v12, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const/4 v13, 0x6

    filled-new-array {v11, v4, v5}, [I

    move-result-object v8

    const-string v4, "KANJI"

    invoke-direct {v12, v4, v13, v8, v11}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v12, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->g:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 17
    new-instance v8, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const-string v4, "FNC1_FIRST_POSITION"

    filled-new-array {v1, v1, v1}, [I

    move-result-object v13

    invoke-direct {v8, v4, v15, v13, v14}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v8, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->h:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 18
    new-instance v13, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const-string v4, "FNC1_SECOND_POSITION"

    filled-new-array {v1, v1, v1}, [I

    move-result-object v1

    invoke-direct {v13, v4, v11, v1, v6}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v13, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->i:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    .line 20
    new-instance v14, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    const-string v1, "HANZI"

    const/16 v4, 0xa

    filled-new-array {v11, v4, v5}, [I

    move-result-object v4

    const/16 v5, 0xd

    invoke-direct {v14, v1, v6, v4, v5}, Lcn/sharesdk/framework/utils/QRCodeUtil/i;-><init>(Ljava/lang/String;I[II)V

    sput-object v14, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->j:Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v7

    move-object v4, v9

    move-object v5, v10

    move-object v6, v12

    move-object v7, v8

    move-object v8, v13

    move-object v9, v14

    .line 8
    filled-new-array/range {v0 .. v9}, [Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->m:[Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->k:[I

    .line 27
    iput p4, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->l:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/QRCodeUtil/i;
    .locals 1

    .line 8
    const-class v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/QRCodeUtil/i;
    .locals 1

    .line 8
    sget-object v0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->m:[Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/QRCodeUtil/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/QRCodeUtil/i;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 82
    iget v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->l:I

    return v0
.end method

.method public a(Lcn/sharesdk/framework/utils/QRCodeUtil/n;)I
    .locals 1

    .line 69
    invoke-virtual {p1}, Lcn/sharesdk/framework/utils/QRCodeUtil/n;->a()I

    move-result p1

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 78
    :goto_0
    iget-object v0, p0, Lcn/sharesdk/framework/utils/QRCodeUtil/i;->k:[I

    aget p1, v0, p1

    return p1
.end method
