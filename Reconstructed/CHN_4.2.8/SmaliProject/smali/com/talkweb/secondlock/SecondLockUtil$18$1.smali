.class Lcom/talkweb/secondlock/SecondLockUtil$18$1;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$18;->onSetPassword(Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$18;

.field final synthetic val$dialog:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$18;Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;)V
    .locals 0

    .line 1105
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$18;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->onSetResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1108
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/talkweb/secondlock/ui/TwgLockSetPasswordDialog;->onSetResult(ZLjava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/talkweb/secondlock/SecondLockUtil$18$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$18;

    iget-object v0, v0, Lcom/talkweb/secondlock/SecondLockUtil$18;->this$0:Lcom/talkweb/secondlock/SecondLockUtil;

    new-instance v2, Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;

    invoke-direct {v2, p0}, Lcom/talkweb/secondlock/SecondLockUtil$18$1$1;-><init>(Lcom/talkweb/secondlock/SecondLockUtil$18$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/talkweb/secondlock/SecondLockUtil;->toggleServerPassword(ZLcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;)V

    return-void
.end method
