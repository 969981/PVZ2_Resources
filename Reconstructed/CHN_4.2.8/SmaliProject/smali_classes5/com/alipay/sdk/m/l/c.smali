.class public final enum Lcom/alipay/sdk/m/l/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/sdk/m/l/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/alipay/sdk/m/l/c;

.field public static final enum d:Lcom/alipay/sdk/m/l/c;

.field public static final enum e:Lcom/alipay/sdk/m/l/c;

.field public static final enum f:Lcom/alipay/sdk/m/l/c;

.field public static final enum g:Lcom/alipay/sdk/m/l/c;

.field public static final enum h:Lcom/alipay/sdk/m/l/c;

.field public static final enum i:Lcom/alipay/sdk/m/l/c;

.field public static final enum j:Lcom/alipay/sdk/m/l/c;

.field public static final synthetic k:[Lcom/alipay/sdk/m/l/c;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/alipay/sdk/m/l/c;

    const-string v1, "SUCCEEDED"

    const/4 v2, 0x0

    const/16 v3, 0x2328

    const-string v4, "\u5904\u7406\u6210\u529f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/m/l/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/l/c;->c:Lcom/alipay/sdk/m/l/c;

    .line 3
    new-instance v0, Lcom/alipay/sdk/m/l/c;

    const-string v1, "FAILED"

    const/4 v2, 0x1

    const/16 v3, 0xfa0

    const-string v4, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/m/l/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/l/c;->d:Lcom/alipay/sdk/m/l/c;

    .line 5
    new-instance v0, Lcom/alipay/sdk/m/l/c;

    const-string v1, "CANCELED"

    const/4 v2, 0x2

    const/16 v3, 0x1771

    const-string v4, "\u7528\u6237\u53d6\u6d88"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/m/l/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/l/c;->e:Lcom/alipay/sdk/m/l/c;

    .line 7
    new-instance v0, Lcom/alipay/sdk/m/l/c;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x3

    const/16 v3, 0x1772

    const-string v4, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/m/l/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/l/c;->f:Lcom/alipay/sdk/m/l/c;

    .line 10
    new-instance v0, Lcom/alipay/sdk/m/l/c;

    const-string v1, "ACTIVITY_NOT_START_EXIT"

    const/4 v2, 0x4

    const/16 v3, 0x1777

    const-string v4, "\u652f\u4ed8\u672a\u5b8c\u6210"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/m/l/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/l/c;->g:Lcom/alipay/sdk/m/l/c;

    .line 12
    new-instance v0, Lcom/alipay/sdk/m/l/c;

    const-string v1, "PARAMS_ERROR"

    const/4 v2, 0x5

    const/16 v3, 0xfa1

    const-string v4, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/m/l/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/l/c;->h:Lcom/alipay/sdk/m/l/c;

    .line 14
    new-instance v0, Lcom/alipay/sdk/m/l/c;

    const-string v1, "DOUBLE_REQUEST"

    const/4 v2, 0x6

    const/16 v3, 0x1388

    const-string v4, "\u91cd\u590d\u8bf7\u6c42"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/m/l/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/l/c;->i:Lcom/alipay/sdk/m/l/c;

    .line 16
    new-instance v0, Lcom/alipay/sdk/m/l/c;

    const-string v1, "PAY_WAITTING"

    const/4 v2, 0x7

    const/16 v3, 0x1f40

    const-string v4, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/m/l/c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/l/c;->j:Lcom/alipay/sdk/m/l/c;

    .line 17
    invoke-static {}, Lcom/alipay/sdk/m/l/c;->a()[Lcom/alipay/sdk/m/l/c;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/m/l/c;->k:[Lcom/alipay/sdk/m/l/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/alipay/sdk/m/l/c;->a:I

    .line 3
    iput-object p4, p0, Lcom/alipay/sdk/m/l/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/alipay/sdk/m/l/c;
    .locals 1

    const/16 v0, 0xfa1

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1388

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1f40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2328

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1771

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1772

    if-eq p0, v0, :cond_0

    .line 3
    sget-object p0, Lcom/alipay/sdk/m/l/c;->d:Lcom/alipay/sdk/m/l/c;

    return-object p0

    .line 13
    :cond_0
    sget-object p0, Lcom/alipay/sdk/m/l/c;->f:Lcom/alipay/sdk/m/l/c;

    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lcom/alipay/sdk/m/l/c;->e:Lcom/alipay/sdk/m/l/c;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/alipay/sdk/m/l/c;->c:Lcom/alipay/sdk/m/l/c;

    return-object p0

    .line 12
    :cond_3
    sget-object p0, Lcom/alipay/sdk/m/l/c;->j:Lcom/alipay/sdk/m/l/c;

    return-object p0

    .line 22
    :cond_4
    sget-object p0, Lcom/alipay/sdk/m/l/c;->i:Lcom/alipay/sdk/m/l/c;

    return-object p0

    .line 23
    :cond_5
    sget-object p0, Lcom/alipay/sdk/m/l/c;->h:Lcom/alipay/sdk/m/l/c;

    return-object p0
.end method

.method public static synthetic a()[Lcom/alipay/sdk/m/l/c;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alipay/sdk/m/l/c;

    .line 1
    sget-object v1, Lcom/alipay/sdk/m/l/c;->c:Lcom/alipay/sdk/m/l/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/l/c;->d:Lcom/alipay/sdk/m/l/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/l/c;->e:Lcom/alipay/sdk/m/l/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/l/c;->f:Lcom/alipay/sdk/m/l/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/l/c;->g:Lcom/alipay/sdk/m/l/c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/l/c;->h:Lcom/alipay/sdk/m/l/c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/l/c;->i:Lcom/alipay/sdk/m/l/c;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/l/c;->j:Lcom/alipay/sdk/m/l/c;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/m/l/c;
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/sdk/m/l/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/sdk/m/l/c;

    return-object p0
.end method

.method public static values()[Lcom/alipay/sdk/m/l/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/sdk/m/l/c;->k:[Lcom/alipay/sdk/m/l/c;

    invoke-virtual {v0}, [Lcom/alipay/sdk/m/l/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/m/l/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/alipay/sdk/m/l/c;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/alipay/sdk/m/l/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/alipay/sdk/m/l/c;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alipay/sdk/m/l/c;->a:I

    return v0
.end method
