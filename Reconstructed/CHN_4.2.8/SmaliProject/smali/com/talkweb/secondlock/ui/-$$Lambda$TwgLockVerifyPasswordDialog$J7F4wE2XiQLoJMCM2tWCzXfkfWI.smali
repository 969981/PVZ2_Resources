.class public final synthetic Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;->f$0:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;

    iput-object p2, p0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;->f$2:I

    iput p4, p0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;->f$0:Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;

    iget-object v1, p0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;->f$2:I

    iget v3, p0, Lcom/talkweb/secondlock/ui/-$$Lambda$TwgLockVerifyPasswordDialog$J7F4wE2XiQLoJMCM2tWCzXfkfWI;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/talkweb/secondlock/ui/TwgLockVerifyPasswordDialog;->lambda$onVerifyResult$1$TwgLockVerifyPasswordDialog(Ljava/lang/String;II)V

    return-void
.end method
