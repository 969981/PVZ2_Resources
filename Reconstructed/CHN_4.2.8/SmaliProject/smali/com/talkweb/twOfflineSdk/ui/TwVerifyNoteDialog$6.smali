.class Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$6;
.super Ljava/lang/Object;
.source "TwVerifyNoteDialog.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;->uploadUsrinfo_NEW_TGA(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog$6;->this$0:Lcom/talkweb/twOfflineSdk/ui/TwVerifyNoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 2

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u4f20\u7528\u6237\u4fe1\u606f\u5230TGA\u8fd4\u56de\u7684\u6570\u636e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "success"

    .line 540
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u4e0a\u4f20\u690d\u7269\u5927\u6218\u50f5\u5c38\u7528\u6237\u4fe1\u606f\u5230TGA\u6210\u529f!"

    .line 541
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u4e0a\u4f20\u690d\u7269\u5927\u6218\u50f5\u5c38\u7528\u6237\u4fe1\u606f\u5230TGA\u5931\u8d25!"

    .line 544
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
