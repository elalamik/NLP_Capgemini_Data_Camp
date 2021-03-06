?	OZ????=@OZ????=@!OZ????=@	'?N???'?N???!'?N???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6OZ????=@?;?<@1???k????A?`????I(???I???YJ???`??*	?Vmd@2U
Iterator::Model::ParallelMapV2_?iN^d??!l7???5@)_?iN^d??1l7???5@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??????!,???z,:@)H?Ȱ?7??1?ɯ?5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat,?????!S9???7@)&?"?dT??1?]?<??4@:Preprocessing2F
Iterator::Model?$?pt???!??\GB@)?hE,b??1??a?$-@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?ra???!Z????O@)?a?????1??Z:?\&@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?Y??Bs}?!D??L??@)?Y??Bs}?1D??L??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor1x????u?!;???H
@)1x????u?1;???H
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap#. ?ҥ??!l?)?C<@)?????k?1??;??? @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 93.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9(?N???I?d???rX@Q!`???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?;?<@?;?<@!?;?<@      ??!       "	???k???????k????!???k????*      ??!       2	?`?????`????!?`????:	(???I???(???I???!(???I???B      ??!       J	J???`??J???`??!J???`??R      ??!       Z	J???`??J???`??!J???`??b      ??!       JGPUY(?N???b q?d???rX@y!`????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??D??!??D??"=
sequential_200/dense_600/MatMulMatMul̬m?$???!t?ɴmB??0"=
 sequential_200/dense_602/SoftmaxSoftmaxZ?N?P??!߉???b??"=
sequential_200/dense_601/MatMulMatMul??G?bG??!K?MW??0"K
-gradient_tape/sequential_200/dense_601/MatMulMatMul3+O??H??!??l$????0"K
/gradient_tape/sequential_200/dense_601/MatMul_1MatMul%m?????!?K=h|??"=
sequential_200/dense_602/MatMulMatMul?u?e???!?{b?????0"K
/gradient_tape/sequential_200/dense_602/MatMul_1MatMul?ӳ	?)??!!????n??"K
-gradient_tape/sequential_200/dense_600/MatMulMatMulQ |':??!3??;???0"K
-gradient_tape/sequential_200/dense_602/MatMulMatMul	?????!tM?????0Q      Y@Y[ZZZZZ6@ajiiiiiS@qַ??I?J@y7o??+??"?
both?Your program is POTENTIALLY input-bound because 93.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?53.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 