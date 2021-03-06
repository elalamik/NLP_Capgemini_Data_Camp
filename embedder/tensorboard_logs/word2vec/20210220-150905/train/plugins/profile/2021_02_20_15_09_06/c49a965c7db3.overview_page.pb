?	?5v???@@?5v???@@!?5v???@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-?5v???@@N?@?C?<@1cAJ???A?5_%??I??9p@*	ʡE??EY@2U
Iterator::Model::ParallelMapV2)?k{???!_?E?X?D@))?k{???1_?E?X?D@:Preprocessing2F
Iterator::ModelްmQf???!?)1?^?O@)qqTn????1tF?i?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat>??j?#??!??4??1@)???V%???1ʹ?cӏ,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenatecC7????!K???&@)?i?{??w?1k??8@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice;?zj?u?!,5L?O6@);?zj?u?1,5L?O6@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?"ڎ????!g???B@)??֪]s?1aw?x ?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor;??]?j?!?c???	@);??]?j?1?c???	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?'??????!'Т?q?+@)?????Nh?1o?z@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 86.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?11.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIHx??S`X@Q??0Ă?@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	N?@?C?<@N?@?C?<@!N?@?C?<@      ??!       "	cAJ???cAJ???!cAJ???*      ??!       2	?5_%???5_%??!?5_%??:	??9p@??9p@!??9p@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qHx??S`X@y??0Ă?@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsMAyh???!MAyh???"-
IteratorGetNext/_2_Recv???v???!i?	.???"=
sequential_119/dense_357/MatMulMatMul??է5??!<p<????0"K
-gradient_tape/sequential_119/dense_357/MatMulMatMul?]<???!=)Ȇ{???0"=
 sequential_119/dense_359/SoftmaxSoftmax?7lb^є?!؊??1??"=
sequential_119/dense_358/MatMulMatMulUtE|H???!a/O1j??0"K
-gradient_tape/sequential_119/dense_358/MatMulMatMulO?d??!?Z@y?z??0"K
/gradient_tape/sequential_119/dense_359/MatMul_1MatMul!?"u???!?Fa?Մ??"K
/gradient_tape/sequential_119/dense_358/MatMul_1MatMul??ێ?ۏ?!?%?/????"P
6sequential_119/batch_normalization_59/moments/varianceMean?P??????!?X]????Q      Y@Y??(??(.@a?뺮?:U@q??e??Q@yqE]X] ??"?
both?Your program is POTENTIALLY input-bound because 86.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?11.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?71.7% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 