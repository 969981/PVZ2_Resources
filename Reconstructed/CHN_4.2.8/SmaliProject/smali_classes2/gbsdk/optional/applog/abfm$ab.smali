.class public Lgbsdk/optional/applog/abfm$ab;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/optional/applog/abfm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/optional/applog/abfm$ab;->a:Ljava/lang/String;

    iput-object p2, p0, Lgbsdk/optional/applog/abfm$ab;->b:Ljava/lang/String;

    iput-object p3, p0, Lgbsdk/optional/applog/abfm$ab;->c:Ljava/lang/Class;

    return-void
.end method
