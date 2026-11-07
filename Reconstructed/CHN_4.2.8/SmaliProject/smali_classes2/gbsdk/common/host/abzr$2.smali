.class public final Lgbsdk/common/host/abzr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbsdk/common/host/abvl$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abzr;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic aMI:Ljava/lang/StringBuffer;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lgbsdk/common/host/abzr$2;->a:Ljava/io/File;

    iput-object p2, p0, Lgbsdk/common/host/abzr$2;->b:Ljava/lang/String;

    iput p3, p0, Lgbsdk/common/host/abzr$2;->c:I

    iput-object p4, p0, Lgbsdk/common/host/abzr$2;->aMI:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 87
    iget-object v0, p0, Lgbsdk/common/host/abzr$2;->a:Ljava/io/File;

    iget-object v1, p0, Lgbsdk/common/host/abzr$2;->b:Ljava/lang/String;

    iget v2, p0, Lgbsdk/common/host/abzr$2;->c:I

    iget-object v3, p0, Lgbsdk/common/host/abzr$2;->aMI:Ljava/lang/StringBuffer;

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abzr;->e(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/util/Map;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lgbsdk/common/host/abzr$2;->a:Ljava/io/File;

    iget-object v2, p0, Lgbsdk/common/host/abzr$2;->b:Ljava/lang/String;

    iget v3, p0, Lgbsdk/common/host/abzr$2;->c:I

    iget-object v4, p0, Lgbsdk/common/host/abzr$2;->aMI:Ljava/lang/StringBuffer;

    invoke-static {v1, v2, v3, v4}, Lgbsdk/common/host/abzr;->f(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 93
    iget-object v1, p0, Lgbsdk/common/host/abzr$2;->a:Ljava/io/File;

    iget-object v2, p0, Lgbsdk/common/host/abzr$2;->b:Ljava/lang/String;

    iget v3, p0, Lgbsdk/common/host/abzr$2;->c:I

    iget-object v4, p0, Lgbsdk/common/host/abzr$2;->aMI:Ljava/lang/StringBuffer;

    invoke-static {v1, v2, v3, v4}, Lgbsdk/common/host/abzr;->g(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lgbsdk/common/host/abzr$2;->b:Ljava/lang/String;

    iget v3, p0, Lgbsdk/common/host/abzr$2;->c:I

    iget-object v4, p0, Lgbsdk/common/host/abzr$2;->aMI:Ljava/lang/StringBuffer;

    invoke-static {v1, v2, v3, v4}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 98
    iget-object v1, p0, Lgbsdk/common/host/abzr$2;->a:Ljava/io/File;

    iget-object v2, p0, Lgbsdk/common/host/abzr$2;->b:Ljava/lang/String;

    iget v3, p0, Lgbsdk/common/host/abzr$2;->c:I

    iget-object v4, p0, Lgbsdk/common/host/abzr$2;->aMI:Ljava/lang/StringBuffer;

    invoke-static {v1, v2, v3, v4}, Lgbsdk/common/host/abzr;->h(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 100
    invoke-static {}, Lgbsdk/common/host/acal;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lgbsdk/common/host/acal;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, p0, Lgbsdk/common/host/abzr$2;->b:Ljava/lang/String;

    iget v2, p0, Lgbsdk/common/host/abzr$2;->c:I

    iget-object v3, p0, Lgbsdk/common/host/abzr$2;->aMI:Ljava/lang/StringBuffer;

    invoke-static {v1, v2, v0, v3}, Lgbsdk/common/host/abzr;->a(Ljava/lang/String;ILjava/util/Map;Ljava/lang/StringBuffer;)V

    .line 119
    iget-object v0, p0, Lgbsdk/common/host/abzr$2;->a:Ljava/io/File;

    iget-object v1, p0, Lgbsdk/common/host/abzr$2;->b:Ljava/lang/String;

    iget v2, p0, Lgbsdk/common/host/abzr$2;->c:I

    iget-object v3, p0, Lgbsdk/common/host/abzr$2;->aMI:Ljava/lang/StringBuffer;

    invoke-static {v0, v1, v2, v3}, Lgbsdk/common/host/abzr;->i(Ljava/io/File;Ljava/lang/String;ILjava/lang/StringBuffer;)V

    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Lgbsdk/common/host/abvl$ab;

    const/4 v2, 0x0

    .line 101
    new-instance v3, Lgbsdk/common/host/abzr$2$1;

    invoke-direct {v3, p0, v0}, Lgbsdk/common/host/abzr$2$1;-><init>(Lgbsdk/common/host/abzr$2;Ljava/util/Map;)V

    aput-object v3, v1, v2

    const/4 v0, 0x1

    new-instance v2, Lgbsdk/common/host/abzr$2$2;

    invoke-direct {v2, p0}, Lgbsdk/common/host/abzr$2$2;-><init>(Lgbsdk/common/host/abzr$2;)V

    aput-object v2, v1, v0

    invoke-static {v1}, Lgbsdk/common/host/abvl;->a([Lgbsdk/common/host/abvl$ab;)V

    return-void
.end method
