.class abstract enum Lcom/heepay/plugin/e/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heepay/plugin/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/heepay/plugin/e/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/heepay/plugin/e/c$b;

.field public static final enum b:Lcom/heepay/plugin/e/c$b;

.field public static final enum c:Lcom/heepay/plugin/e/c$b;

.field private static final synthetic d:[Lcom/heepay/plugin/e/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/heepay/plugin/e/c$b$a;

    const-string v1, "ANDROID_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/heepay/plugin/e/c$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/heepay/plugin/e/c$b;->a:Lcom/heepay/plugin/e/c$b;

    new-instance v1, Lcom/heepay/plugin/e/c$b$b;

    const-string v3, "WIFI_MAC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/heepay/plugin/e/c$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/heepay/plugin/e/c$b;->b:Lcom/heepay/plugin/e/c$b;

    new-instance v3, Lcom/heepay/plugin/e/c$b$c;

    const-string v5, "BLUETOOTH_MAC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/heepay/plugin/e/c$b$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/heepay/plugin/e/c$b;->c:Lcom/heepay/plugin/e/c$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/heepay/plugin/e/c$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/heepay/plugin/e/c$b;->d:[Lcom/heepay/plugin/e/c$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/heepay/plugin/e/c$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/heepay/plugin/e/c$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/heepay/plugin/e/c$b;
    .locals 1

    const-class v0, Lcom/heepay/plugin/e/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/heepay/plugin/e/c$b;

    return-object p0
.end method

.method public static values()[Lcom/heepay/plugin/e/c$b;
    .locals 1

    sget-object v0, Lcom/heepay/plugin/e/c$b;->d:[Lcom/heepay/plugin/e/c$b;

    invoke-virtual {v0}, [Lcom/heepay/plugin/e/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/heepay/plugin/e/c$b;

    return-object v0
.end method


# virtual methods
.method abstract a(Landroid/content/Context;)Ljava/lang/String;
.end method
