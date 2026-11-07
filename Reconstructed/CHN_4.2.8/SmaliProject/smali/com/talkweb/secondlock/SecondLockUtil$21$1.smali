.class Lcom/talkweb/secondlock/SecondLockUtil$21$1;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/SecondLockUtil$VerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$21;->onVerify(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$21;)V
    .locals 0

    .line 1277
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$21$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1282
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$21$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$21;

    iget-object p1, p1, Lcom/talkweb/secondlock/SecondLockUtil$21;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    const/4 p2, 0x0

    new-instance v0, Lcom/talkweb/secondlock/SecondLockUtil$21$1$1;

    invoke-direct {v0, p0}, Lcom/talkweb/secondlock/SecondLockUtil$21$1$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$21$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/talkweb/secondlock/SecondLockUtil;->toggleServerPassword(ZLcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V

    :cond_0
    return-void
.end method
