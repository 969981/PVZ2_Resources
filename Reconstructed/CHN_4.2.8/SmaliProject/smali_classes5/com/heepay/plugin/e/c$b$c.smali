.class final enum Lcom/heepay/plugin/e/c$b$c;
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
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Bluetooth Adapter not available"

    invoke-static {p1}, Lcom/heepay/plugin/e/d;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, "android.permission.BLUETOOTH"

    invoke-static {p1, v1}, Lcom/heepay/plugin/e/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
