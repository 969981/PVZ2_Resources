.class public Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;
.super Landroid/app/Activity;
.source "PermisionActivity.java"


# static fields
.field public static isGranted:Z = true

.field public static final isGrantedState:Ljava/lang/String; = "GrantedState"

.field public static final isGrantedStateXm:Ljava/lang/String; = "GrantedStateXm"

.field public static permisionNumber:I

.field public static recervedPush:Z


# instance fields
.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->goToAppSetting()V

    return-void
.end method

.method private goToAppSetting()V
    .locals 4

    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 516
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x7b

    .line 518
    invoke-virtual {p0, v0, v1}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static isTime(J)Z
    .locals 2

    .line 548
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 549
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 550
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x6

    .line 551
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private jumpToLaunchActivity()V
    .locals 3

    const-string v0, "launchActivity"

    .line 210
    invoke-static {v0, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getMetaData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const v2, 0x10008000

    .line 213
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 214
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v1}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "132"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1027"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->finish()V

    :cond_1
    return-void
.end method

.method private showDialogTipUserGoToAppSettting()V
    .locals 3

    .line 466
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b58\u50a8\u6743\u9650\u4e0d\u53ef\u7528"

    .line 467
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8bf7\u5728-\u5e94\u7528\u8bbe\u7f6e-\u6743\u9650-\u4e2d\uff0c\u5141\u8bb8\u4f7f\u7528\u5b58\u50a8\u6743\u9650\u6765\u4fdd\u5b58\u7528\u6237\u6570\u636e"

    .line 468
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$5;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$5;-><init>(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;)V

    const-string v2, "\u7acb\u5373\u5f00\u542f"

    .line 469
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$4;

    invoke-direct {v1, p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$4;-><init>(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;)V

    const-string v2, "\u53d6\u6d88"

    .line 478
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 492
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static startChanPermiss(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public fromIntent()V
    .locals 4

    .line 226
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u4ece\u542f\u52a8\u7684Activity\u91cc\u9762\u83b7\u53d6Intent"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "fromPackage"

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u6765\u6e90\u7684from\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "isgamecenter"

    if-nez v1, :cond_0

    const-string v1, "com.vivo.game"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u662f\u4ece\u6e38\u620f\u4e2d\u5fc3\u6253\u5f00\u8bb0\u5f55\u4e3a1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "1"

    .line 235
    invoke-static {v2, v0, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 237
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u4e0d\u662f\u4ece\u6e38\u620f\u4e2d\u5fc3\u6253\u5f00\u8bb0\u5f55\u4e3a0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "0"

    .line 238
    invoke-static {v2, v0, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 524
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x7b

    if-ne p1, p2, :cond_2

    .line 527
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_2

    .line 531
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/PermissionManager;->hasNecessaryPMSGranted(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 533
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "\u63d0\u793a\u7528\u6237\u5e94\u8be5\u53bb\u5e94\u7528\u8bbe\u7f6e\u754c\u9762\u624b\u52a8\u5f00\u542f\u6743\u9650"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 534
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->showDialogTipUserGoToAppSettting()V

    goto :goto_0

    .line 536
    :cond_0
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 537
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 p1, 0x0

    const-string p2, "\u6743\u9650\u83b7\u53d6\u6210\u529f"

    .line 539
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 541
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "1"

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, v0}, Lcom/talkweb/twutil/TgaPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/network/ApiCallback;)V

    .line 56
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->fromIntent()V

    .line 57
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string p1, "finish1"

    .line 58
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->finish()V

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "tw_login_back"

    invoke-static {p0, v3}, Lcom/talkweb/twOfflineSdk/tools/Resource;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "twOfflinePay.xml"

    const-string v2, "splashTwScreen"

    .line 65
    invoke-static {p0, v1, v2}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getValueFromAssetsByParamName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u62d3\u7ef4\u5f00\u59cb\u95ea\u5c4f isTwSplash\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-string v1, "isPrivacyAgreement"

    .line 95
    invoke-static {v1, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->startPrivacyAgreementDialog()V

    const-string p1, "2"

    .line 100
    invoke-static {p0, p1, v0}, Lcom/talkweb/twutil/TgaPointUtil;->BuryingPoin(Landroid/app/Activity;Ljava/lang/String;Lcom/talkweb/network/ApiCallback;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->startPermiss()V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9

    .line 343
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    if-eqz p2, :cond_7

    .line 344
    array-length v0, p2

    if-eqz v0, :cond_7

    array-length v0, p3

    if-eqz v0, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 348
    :cond_0
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "78"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x64

    const-string v2, "1"

    const-string v3, "GrantedState"

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_3

    .line 349
    aget v0, p3, v4

    if-nez v0, :cond_2

    .line 350
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/PermissionManager;->hasNecessaryPMSGranted(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    aget-object v0, p2, v4

    invoke-virtual {p0, v0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 360
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    .line 361
    sput-boolean v4, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->isGranted:Z

    .line 362
    invoke-static {v3, v2, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    goto :goto_0

    .line 374
    :cond_2
    aget v0, p3, v4

    .line 382
    :cond_3
    :goto_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestCode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "permissions[0]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "grantResults "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    array-length v0, p2

    const-string v5, "GrantedStateXm"

    if-lez v0, :cond_5

    array-length v0, p3

    if-lez v0, :cond_5

    .line 384
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v4

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p3, v4

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-ne p1, v1, :cond_6

    .line 386
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_6

    .line 388
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/PermissionManager;->hasNecessaryPMSGranted(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 391
    aget-object p1, p2, v4

    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 398
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    .line 399
    sput-boolean v4, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->isGranted:Z

    .line 400
    invoke-static {v3, v2, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 407
    :cond_4
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    goto :goto_1

    .line 412
    :cond_5
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "jumpToLaunchActivity xxx"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    sput-boolean v4, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->isGranted:Z

    .line 415
    invoke-static {v3, v2, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_6
    :goto_1
    return-void

    .line 345
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    return-void
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;I[I)V
    .locals 4

    .line 430
    invoke-super {p0, p2, p1, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 432
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permissions[0]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "grantResults "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p3, v2

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 p3, 0x64

    if-ne p2, p3, :cond_1

    .line 434
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_1

    .line 436
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/PermissionManager;->hasNecessaryPMSGranted(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 439
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 446
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    .line 447
    sput-boolean v2, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->isGranted:Z

    const-string p1, "GrantedState"

    const-string p2, "1"

    .line 448
    invoke-static {p1, p2, p0}, Lcom/talkweb/twOfflineSdk/tools/Tools;->storeData(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startPermiss()V
    .locals 2

    .line 280
    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/talkweb/twOfflineSdk/TwOfflineSDK;->getChannelId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1027"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 281
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/PermissionManager;->addPermission(Ljava/lang/String;)V

    .line 282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    .line 283
    new-instance v0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$3;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$3;-><init>(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;)V

    invoke-static {p0, v0}, Lcom/talkweb/twOfflineSdk/tools/PermissionManager;->checkAndRequestPermissions(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/CheckPermissionCallback;)V

    goto :goto_1

    .line 294
    :cond_2
    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;->jumpToLaunchActivity()V

    :goto_1
    return-void
.end method

.method public startPrivacyAgreementDialog()V
    .locals 1

    .line 115
    new-instance v0, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;

    invoke-direct {v0, p0}, Lcom/talkweb/twOfflineSdk/activity/PermisionActivity$2;-><init>(Lcom/talkweb/twOfflineSdk/activity/PermisionActivity;)V

    invoke-static {p0, v0}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->getPrivacyAgreementDialog(Landroid/app/Activity;Lcom/talkweb/twOfflineSdk/callback/PrivacyAgreementCallback;)Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/talkweb/twOfflineSdk/ui/TwPrivacyAgreementDilog;->showPrivacyAgreementDialog()V

    return-void
.end method
