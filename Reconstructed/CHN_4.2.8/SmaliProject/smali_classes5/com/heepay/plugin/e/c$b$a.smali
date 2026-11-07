.class final enum Lcom/heepay/plugin/e/c$b$a;
.super Lcom/heepay/plugin/e/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heepay/plugin/e/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/heepay/plugin/e/c$b;-><init>(Ljava/lang/String;ILcom/heepay/plugin/e/c$a;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "9774d56d682e549c"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "The device suffers from the Android ID bug - its ID is the emulator ID : 9774d56d682e549c"

    invoke-static {p1}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/heepay/plugin/a/a;

    invoke-direct {p1}, Lcom/heepay/plugin/a/a;-><init>()V

    throw p1
.end method
