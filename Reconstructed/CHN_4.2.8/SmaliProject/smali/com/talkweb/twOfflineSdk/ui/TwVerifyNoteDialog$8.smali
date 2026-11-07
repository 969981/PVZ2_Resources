.class Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$8;
.super Ljava/lang/Object;
.source "TwVerifyNoteDialog.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->getSystemTime(Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$8;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$8;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 10

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HUAWEI_QUERY_SYSTEMTIME responseData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v0, ""

    .line 636
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 638
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "holiday"

    .line 639
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "timeStamp"

    .line 640
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",isHoliday:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const-wide/32 v2, 0x5265c00

    .line 643
    div-long v4, v0, v2

    mul-long/2addr v4, v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x44aa200

    add-long/2addr v2, v4

    const-wide/32 v6, 0x4819080

    add-long/2addr v6, v4

    .line 648
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1zeroTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",time8:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",time22:"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    cmp-long v2, v0, v6

    if-gez v2, :cond_3

    const-string v2, "\u5f53\u524d\u5c5e\u4e8e20\u70b9\u81f321\u70b9\u4e4b\u95f4\u53ef\u4ee5\u73a9\u6e38\u620f"

    .line 651
    invoke-static {v2}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "\u8282\u5047\u65e5,\u8fdb\u5165\u6e38\u620f\uff01true,true"

    .line 653
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 654
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$8;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v2, v2}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    goto :goto_1

    .line 656
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 657
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 658
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x7

    .line 659
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "\u56fd\u5bb6\u89c4\u5b9a\u65f6\u95f4\u6bb5,\u6e38\u620f\u65f6\u95f4\u4e0d\u5c5e\u4e8e\u5468\u4e94\u3001\u5468\u516d\u3001\u5468\u65e5\u6216\u8005\u8282\u5047\u65e5,\u9000\u51fa\u6e38\u620f\uff01"

    .line 663
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$8;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->antiAddiction()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "\u56fd\u5bb6\u89c4\u5b9a\u65f6\u95f4\u6bb5,\u975e\u8282\u5047\u65e5,\u5468\u4e94\u3001\u516d\u3001\u65e5\uff0c\u8fdb\u5165\u6e38\u620f\uff01true,true"

    .line 660
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 661
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$8;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;

    invoke-interface {p1, v2, v2}, Lcom/talkweb/twOfflineSdk/callback/CertificationCallback;->verifyFinished(ZZ)V

    goto :goto_1

    .line 669
    :cond_3
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$8;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->antiAddiction()V

    const-string p1, "\u4e0d\u5c5e\u4e8e20\u70b9\u81f321\u70b9\u4e4b\u95f4\u4e0d\u53ef\u4ee5\u73a9\u6e38\u620f"

    .line 670
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 673
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
