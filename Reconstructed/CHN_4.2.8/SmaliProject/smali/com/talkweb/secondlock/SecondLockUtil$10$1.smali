.class Lcom/talkweb/secondlock/SecondLockUtil$10$1;
.super Ljava/lang/Object;
.source "SecondLockUtil.java"

# interfaces
.implements Lcom/talkweb/secondlock/SecondLockUtil$OnSimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/secondlock/SecondLockUtil$10;->onToggle(Lcom/talkweb/secondlock/ui/TwgLockManageDialog;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/secondlock/SecondLockUtil$10;

.field final synthetic val$dialog:Lcom/talkweb/secondlock/ui/TwgLockManageDialog;


# direct methods
.method constructor <init>(Lcom/talkweb/secondlock/SecondLockUtil$10;Lcom/talkweb/secondlock/ui/TwgLockManageDialog;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$10$1;->this$1:Lcom/talkweb/secondlock/SecondLockUtil$10;

    iput-object p2, p0, Lcom/talkweb/secondlock/SecondLockUtil$10$1;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockManageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 752
    iget-object p1, p0, Lcom/talkweb/secondlock/SecondLockUtil$10$1;->val$dialog:Lcom/talkweb/secondlock/ui/TwgLockManageDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/talkweb/secondlock/ui/TwgLockManageDialog;->setProtectEnabled(Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
