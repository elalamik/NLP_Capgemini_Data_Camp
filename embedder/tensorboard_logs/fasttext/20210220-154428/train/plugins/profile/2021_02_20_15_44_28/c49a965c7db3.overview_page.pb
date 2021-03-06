?	"QhY??A@"QhY??A@!"QhY??A@	??)????)??!??)??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6"QhY??A@O?o+?@@1q9^?????AXc'???I8?*5{`??Y|~!<??*	??????V@2U
Iterator::Model::ParallelMapV2?(???^??!??^m??@@)?(???^??1??^m??@@:Preprocessing2F
Iterator::Modeln??4Ҫ?!4??^?L@)????E??1?v?8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?ݓ??Z??!t?:f??4@)>???@??1?_?3T1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate^c?????!f?Wb? *@)ڐfx?18?0??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?5???x?!?D~w?@)?5???x?1?D~w?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??V	???!?Q??E@)?l????r?1??6?o@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?j?=&Rj?!???.?d@)?j?=&Rj?1???.?d@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???x???!?ʂ?%0@)???eNg?1?=??h$	@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??)??I??-??eX@QX??U@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	O?o+?@@O?o+?@@!O?o+?@@      ??!       "	q9^?????q9^?????!q9^?????*      ??!       2	Xc'???Xc'???!Xc'???:	8?*5{`??8?*5{`??!8?*5{`??B      ??!       J	|~!<??|~!<??!|~!<??R      ??!       Z	|~!<??|~!<??!|~!<??b      ??!       JGPUY??)??b q??-??eX@yX??U@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsQJݾ???!QJݾ???"=
sequential_230/dense_690/MatMulMatMul?,?ט??!|????K??0"=
 sequential_230/dense_692/SoftmaxSoftmax;??3v̖?!c?5i?%??"=
sequential_230/dense_691/MatMulMatMul???'???!Z??c????0"-
IteratorGetNext/_1_Send?w??B???!N????C??"=
sequential_230/dense_692/MatMulMatMul??-!??!H?q:???0"K
-gradient_tape/sequential_230/dense_691/MatMulMatMul?huZx??!?Q????0"K
-gradient_tape/sequential_230/dense_690/MatMulMatMul??bP>??!?q3????0"K
/gradient_tape/sequential_230/dense_692/MatMul_1MatMul7V??q??!??p????"K
/gradient_tape/sequential_230/dense_691/MatMul_1MatMul?@9N._??!??????Q      Y@Y??(??(.@a?뺮?:U@qIo????Q@yDV?????"?
both?Your program is POTENTIALLY input-bound because 93.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?71.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 