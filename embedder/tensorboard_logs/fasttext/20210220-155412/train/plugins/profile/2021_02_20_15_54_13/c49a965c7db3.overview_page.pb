?	Pqx??@@Pqx??@@!Pqx??@@      ??!       "n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-Pqx??@@??&?>@1ڌ?Ux??A#?dTƝ?I?7Ӆ? @*	-???T@2U
Iterator::Model::ParallelMapV2}?X??L??!?5?	~?B@)}?X??L??1?5?	~?B@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?J???֒?!3???o6@)p???$???1?&?4q52@:Preprocessing2F
Iterator::Model??Դ?i??!6i5?J@)M??E??1Wg60@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate˞6????!??.??.@)???x??{?1|7,C̃ @:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???x?!5?c?/?@)???x?15?c?/?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?y?):???!ɖ???NG@)?,^,q?1????|M@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??s?fl?!?0?"??@)??s?fl?1?0?"??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?q?Z|
??!?Q??3@)w?E?h?1=W4?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI"???bX@Q??o??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??&?>@??&?>@!??&?>@      ??!       "	ڌ?Ux??ڌ?Ux??!ڌ?Ux??*      ??!       2	#?dTƝ?#?dTƝ?!#?dTƝ?:	?7Ӆ? @?7Ӆ? @!?7Ӆ? @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q"???bX@y??o??@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?"?٫??!?"?٫??"=
sequential_261/dense_783/MatMulMatMul????l??! ?~q???0"-
IteratorGetNext/_2_Recv??p!?Ǘ?!?٬?a???"K
-gradient_tape/sequential_261/dense_783/MatMulMatMul???BG??!64J???0"=
 sequential_261/dense_785/SoftmaxSoftmax?????a??!Gp?I?G??"[
Bgradient_tape/sequential_261/batch_normalization_129/moments/mul_1Mul???@???!}??b???"=
sequential_261/dense_784/MatMulMatMul?(ȭ????!???c	??0"K
/gradient_tape/sequential_261/dense_785/MatMul_1MatMul?<=͉??!㺭7?5??"K
-gradient_tape/sequential_261/dense_784/MatMulMatMul?HH?t??!m?R??F??0"Q
7sequential_261/batch_normalization_129/moments/varianceMean?HH?t??!???̴W??Q      Y@Y??(??(.@a?뺮?:U@q?=@r?S@y?Hw?j??"?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?6.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?76.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 