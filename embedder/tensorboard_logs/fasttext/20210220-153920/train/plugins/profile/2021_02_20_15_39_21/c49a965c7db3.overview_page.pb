?	7pꔿ8@7pꔿ8@!7pꔿ8@	/<??????/<??????!/<??????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails67pꔿ8@?9:Z?6@1?UJ????A?>+N??I??D?kk??Y?D?????*	?Q???`@2U
Iterator::Model::ParallelMapV2nR?X?;??!3???D@)nR?X?;??13???D@:Preprocessing2F
Iterator::Model?;?????!fS??_M@)?J>v(??1g|?ጏ2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?
???ߖ?!{?go?0@)??v??N??1??k!?},@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateߥ?%???!T??U?2@)?#Di??1?U???*+@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceW	?3?z?!?(D??@)W	?3?z?1?(D??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipe??????!??M?=?D@)??M~?Nv?1??x?Hu@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?f?ba?l?!?iH?:@)?f?ba?l?1?iH?:@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?F?g?u??!??#?B4@)6?:?b?1ڇ4?P???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no90<??????I(	??iX@Q?P?c??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?9:Z?6@?9:Z?6@!?9:Z?6@      ??!       "	?UJ?????UJ????!?UJ????*      ??!       2	?>+N???>+N??!?>+N??:	??D?kk????D?kk??!??D?kk??B      ??!       J	?D??????D?????!?D?????R      ??!       Z	?D??????D?????!?D?????b      ??!       JGPUY0<??????b q(	??iX@y?P?c???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits? e????!? e????"=
 sequential_216/dense_650/SoftmaxSoftmaxȨ??????!??K????"=
sequential_216/dense_648/MatMulMatMul?p??͞??!"?*????0"K
/gradient_tape/sequential_216/dense_649/MatMul_1MatMul?*7???!??n.????"K
/gradient_tape/sequential_216/dense_650/MatMul_1MatMul?*7???!"c?1?R??"K
-gradient_tape/sequential_216/dense_648/MatMulMatMul? :ZIv??!*??;???0"=
sequential_216/dense_649/MatMulMatMul?pv~?S??!2jl?z???0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamy ??P??!:zL??4??"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdamq(?v?
??!?l??2U??"K
-gradient_tape/sequential_216/dense_649/MatMulMatMulk8?sB??!H????f??0Q      Y@Y[ZZZZZ6@ajiiiiiS@q	~??C?L@y????"??"?
both?Your program is POTENTIALLY input-bound because 92.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?57.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 