.class public final enum Lcom/alipay/sdk/m/v/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/sdk/m/v/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/alipay/sdk/m/v/a;

.field public static final enum c:Lcom/alipay/sdk/m/v/a;

.field public static final enum d:Lcom/alipay/sdk/m/v/a;

.field public static final enum e:Lcom/alipay/sdk/m/v/a;

.field public static final enum f:Lcom/alipay/sdk/m/v/a;

.field public static final enum g:Lcom/alipay/sdk/m/v/a;

.field public static final enum h:Lcom/alipay/sdk/m/v/a;

.field public static final synthetic i:[Lcom/alipay/sdk/m/v/a;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/alipay/sdk/m/v/a;

    const-string v1, "None"

    const/4 v2, 0x0

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/m/v/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/v/a;->b:Lcom/alipay/sdk/m/v/a;

    new-instance v0, Lcom/alipay/sdk/m/v/a;

    const-string v1, "WapPay"

    const/4 v2, 0x1

    const-string v3, "js://wappay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/m/v/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/v/a;->c:Lcom/alipay/sdk/m/v/a;

    new-instance v0, Lcom/alipay/sdk/m/v/a;

    const-string v1, "Update"

    const/4 v2, 0x2

    const-string v3, "js://update"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/m/v/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/v/a;->d:Lcom/alipay/sdk/m/v/a;

    .line 2
    new-instance v0, Lcom/alipay/sdk/m/v/a;

    const-string v1, "OpenWeb"

    const/4 v2, 0x3

    const-string v3, "loc:openweb"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/m/v/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/v/a;->e:Lcom/alipay/sdk/m/v/a;

    new-instance v0, Lcom/alipay/sdk/m/v/a;

    const-string v1, "SetResult"

    const/4 v2, 0x4

    const-string v3, "loc:setResult"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/m/v/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/v/a;->f:Lcom/alipay/sdk/m/v/a;

    new-instance v0, Lcom/alipay/sdk/m/v/a;

    const-string v1, "Exit"

    const/4 v2, 0x5

    const-string v3, "loc:exit"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/m/v/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/v/a;->g:Lcom/alipay/sdk/m/v/a;

    .line 3
    new-instance v0, Lcom/alipay/sdk/m/v/a;

    const-string v1, "LocalWebPay"

    const/4 v2, 0x6

    const-string v3, "js://localWebPay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/sdk/m/v/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/m/v/a;->h:Lcom/alipay/sdk/m/v/a;

    .line 4
    invoke-static {}, Lcom/alipay/sdk/m/v/a;->a()[Lcom/alipay/sdk/m/v/a;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/m/v/a;->i:[Lcom/alipay/sdk/m/v/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/alipay/sdk/m/v/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/sdk/m/v/a;
    .locals 6

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/alipay/sdk/m/v/a;->b:Lcom/alipay/sdk/m/v/a;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/alipay/sdk/m/v/a;->b:Lcom/alipay/sdk/m/v/a;

    .line 7
    invoke-static {}, Lcom/alipay/sdk/m/v/a;->values()[Lcom/alipay/sdk/m/v/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 8
    iget-object v5, v4, Lcom/alipay/sdk/m/v/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static synthetic a()[Lcom/alipay/sdk/m/v/a;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/sdk/m/v/a;

    .line 1
    sget-object v1, Lcom/alipay/sdk/m/v/a;->b:Lcom/alipay/sdk/m/v/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/v/a;->c:Lcom/alipay/sdk/m/v/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/v/a;->d:Lcom/alipay/sdk/m/v/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/v/a;->e:Lcom/alipay/sdk/m/v/a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/v/a;->f:Lcom/alipay/sdk/m/v/a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/v/a;->g:Lcom/alipay/sdk/m/v/a;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/sdk/m/v/a;->h:Lcom/alipay/sdk/m/v/a;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/m/v/a;
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/sdk/m/v/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/sdk/m/v/a;

    return-object p0
.end method

.method public static values()[Lcom/alipay/sdk/m/v/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/sdk/m/v/a;->i:[Lcom/alipay/sdk/m/v/a;

    invoke-virtual {v0}, [Lcom/alipay/sdk/m/v/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/m/v/a;

    return-object v0
.end method
