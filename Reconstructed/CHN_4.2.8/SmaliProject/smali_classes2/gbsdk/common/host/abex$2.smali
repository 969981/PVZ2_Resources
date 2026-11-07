.class public final Lgbsdk/common/host/abex$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abex;->a(Ljava/lang/Object;Lgbsdk/common/host/abff;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic aE:Ljava/lang/Object;

.field final synthetic fm:Lgbsdk/common/host/abff;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lgbsdk/common/host/abff;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abex$2;->aE:Ljava/lang/Object;

    iput-object p2, p0, Lgbsdk/common/host/abex$2;->fm:Lgbsdk/common/host/abff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lgbsdk/common/host/abex$2;->aE:Ljava/lang/Object;

    iget-object v1, p0, Lgbsdk/common/host/abex$2;->fm:Lgbsdk/common/host/abff;

    invoke-static {v0, v1}, Lgbsdk/common/host/abex;->a(Ljava/lang/Object;Lgbsdk/common/host/abff;)V

    return-void
.end method
